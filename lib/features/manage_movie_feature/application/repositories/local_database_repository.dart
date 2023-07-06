import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain_imports.dart';
import '../../infrastructure/infrastructure_imports.dart';

///Repository interface for local database methods
abstract class LocalDataBaseRepository {
  Stream<List<Movie>> watchAllMovies(); // Display saved movies

  Future<void> saveMovie(Movie movie); // save a movie

  Future<void> deleteMovie(Movie movie); // delete a movie
}

/// Provider for [LocalDataBaseRepository]

final localDataBaseRepositoryProvider =
    Provider<LocalDataBaseRepository>((ref) {
  final localDataSource = ref.watch(localDataSourceProvider);
  return LocalDataBaseRepositoryImpl(localData: localDataSource);
});
