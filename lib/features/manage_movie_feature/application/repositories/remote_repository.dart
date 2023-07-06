import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/domain_imports.dart';
import '../../infrastructure/infrastructure_imports.dart';

///Repository interface for remote methods
abstract class RemoteRepository {
  /// Fetch movies of the day
  Future<List<Movie>> getPopularMoviesDay();

  /// Fetch movies of the week
  Future<List<Movie>> getPopularMoviesWeek();
}

/// Provider for [RemoteRepository]
final remoteRepositoryProvider = Provider<RemoteRepository>((ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return RemoteRepositoryImpl(remoteDataSource: remoteDataSource);
});
