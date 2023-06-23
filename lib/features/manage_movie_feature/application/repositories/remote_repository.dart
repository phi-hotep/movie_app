import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/infrastructure_imports.dart';

///Repository interface for remote methods
abstract class RemoteRepository {
  Future<List<Movie>> getPopularMoviesDay(); // fetch movies of the day

  Future<List<Movie>> getPopularMoviesWeek(); // fetch movies of the week
}

/// Provider for [RemoteRepository]
final remoteRepositoryProvider = Provider<RemoteRepository>((ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return RemoteRepositoryImpl(remoteDataSource: remoteDataSource);
});
