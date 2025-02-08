import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/domain_imports.dart';
import '../../infrastructure/infrastructure_imports.dart';

part 'remote_repository.g.dart';

/// Provider for [RemoteRepository]
@riverpod
RemoteRepository remoteRepository(Ref ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return RemoteRepositoryImpl(remoteDataSource: remoteDataSource);
}

///Repository interface for remote methods
abstract class RemoteRepository {
  /// Fetch movies of the day
  Future<List<Movie>> getPopularMoviesDay();

  /// Fetch movies of the week
  Future<List<Movie>> getPopularMoviesWeek();
}
