import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/database/database_imports.dart';
import '../../infrastructure_imports.dart';

/// This abstract class represents local data source for the app
abstract class LocalDataSource {
  //Functions which deal with local database -->
  Future<void> addMovieToDatabase(MovieDto movieDto);

  Future<void> deleteMovieFromDatabase(MovieDto movieDto);

  Stream<List<MovieDto>> watchAllMoviesFromDatabase();
}

///Provider of [LocalDataSource]
final localDataSourceProvider = Provider<LocalDataSource>((ref) {
  final daoProv = ref.watch(movieDaoProvider);
  return LocalDataSourceImpl(daoProv);
});
