import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/domain_imports.dart';
import '../../infrastructure/infrastructure_imports.dart';

part 'local_database_repository.g.dart';

/// Provider for [LocalDataBaseRepository]
@riverpod
LocalDataBaseRepository localDataBaseRepository(Ref ref) {
  final localDataSource = ref.watch(localDataSourceProvider);
  return LocalDataBaseRepositoryImpl(localData: localDataSource);
}

///Repository interface for local database methods
abstract class LocalDataBaseRepository {
  Stream<List<Movie>> watchAllMovies(); // Display saved movies

  Future<void> saveMovie(Movie movie); // save a movie

  Future<void> deleteMovie(Movie movie); // delete a movie
}
