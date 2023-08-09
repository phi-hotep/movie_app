import 'package:drift/native.dart';

import '../../../../../core/database/database_imports.dart';
import '../../../../../core/error/error_imports.dart';
import '../../converters.dart';
import '../../infrastructure_imports.dart';

/// This class implements [LocalDataSource] and depends on [MovieDao]
/// to access the local database

class LocalDataSourceImpl implements LocalDataSource {
  final MovieDao _dao;
  LocalDataSourceImpl(this._dao);

  @override
  Future<void> addMovieToDatabase(MovieDto movieDto) async {
    try {
      await _dao.insertMovie(movieDtoToAppMovieDataConverter(movieDto));
    } on SqliteException catch (e) {
      throw LocalDatabaseException(e);
    }
  }

  @override
  Future<void> deleteMovieFromDatabase(MovieDto movieDto) async {
    try {
      await _dao.deleteMovie(movieDto.id);
    } on SqliteException catch (e) {
      throw LocalDatabaseException(e);
    }
  }

  @override
  Stream<List<MovieDto>> watchAllMoviesFromDatabase() {
    try {
      Stream<List<MovieDto>> movieStream;
      movieStream = _dao.selectAllMovies().map((databaseListMovie) {
        final currentMovieDtoList = <MovieDto>[];
        for (var item in databaseListMovie) {
          currentMovieDtoList.add(appMovieDataToMovieDtoConverter(item));
        }

        return currentMovieDtoList;
      });
      return movieStream;
    } on SqliteException catch (e) {
      throw LocalDatabaseException(e);
    }
  }

  // void closeDb() async {
  //   await _dao.close();
  //   print('Database is closed');
  // }
}
