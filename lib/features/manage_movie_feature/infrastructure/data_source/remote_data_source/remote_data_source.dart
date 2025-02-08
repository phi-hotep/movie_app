import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/network/network_imports.dart';
import '../../infrastructure_imports.dart';

part 'remote_data_source.g.dart';

/// Provider of Remote data source [RemoteDataSource]
@riverpod
RemoteDataSource remoteDataSource(Ref ref) {
  final client = ref.watch(dioClientProvider);

  return RemoteDataSourceImpl(dioClient: client);
}

/// This abstract class represents remote data source for the app
abstract class RemoteDataSource {
  /// This method makes calls on the https://api.themoviedb.org/3/trending/ API
  /// to fetch movies of the day or return an [Exception] when an error raises
  Future<List<MovieDto>> getPopularMoviesDay();

  /// This method makes calls on the https://api.themoviedb.org/3/trending/ API
  /// to fetch movies of the week or return an [Exception] when an error raises
  Future<List<MovieDto>> getPopularMoviesWeek();
}
