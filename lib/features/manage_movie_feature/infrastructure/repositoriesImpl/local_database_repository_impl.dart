// ignore_for_file: void_checks

import '../../../../core/error/error_imports.dart';
import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';
import '../converters.dart';
import '../infrastructure_imports.dart';

/// This class implements [LocalDataBaseRepository] class, located in
/// Application layer.
class LocalDataBaseRepositoryImpl implements LocalDataBaseRepository {
  final LocalDataSource localData;
  LocalDataBaseRepositoryImpl({required this.localData});

  @override
  Future<void> saveMovie(Movie movie) async {
    MovieDto movieDto = movieToMovieDtoConverter(movie);
    try {
      await localData.addMovieToDatabase(movieDto);
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Future<void> deleteMovie(Movie movie) async {
    MovieDto movieDto = movieToMovieDtoConverter(movie);
    try {
      await localData.deleteMovieFromDatabase(movieDto);
    } on LocalDatabaseException {
      rethrow;
    }
  }

  @override
  Stream<List<Movie>> watchAllMovies() {
    try {
      final result = localData.watchAllMoviesFromDatabase().map((listMovieDto) {
        final listMovie = <Movie>[];
        for (var elt in listMovieDto) {
          listMovie.add(movieDtoToMovieConverter(elt));
        }
        return listMovie;
      });
      return result;
    } on LocalDatabaseException {
      rethrow;
    }
  }
}
