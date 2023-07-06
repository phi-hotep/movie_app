import 'package:dio/dio.dart';

import '../../../../../core/error/error_imports.dart';
import '../../../../../core/network/network_imports.dart';
import '../../infrastructure_imports.dart';

/// This class execute the [RemoteDataSource] contract and depends on [DioClient]
/// for the API connection with the remote server
class RemoteDataSourceImpl implements RemoteDataSource {
  final DioClient dioClient;
  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<MovieDto>> getPopularMoviesDay() async {
    try {
      final response =
          await dioClient.get(Endpoints.media_type + Endpoints.time_window_day);
      if (response.statusCode == 200) {
        final listMovieDto = (response.data['results'] as List)
            .map((elt) => MovieDto.fromJson(elt))
            .toList();
        return listMovieDto;
      } else {
        throw ServerException(response);
      }
    } on DioError catch (e) {
      throw ServerException(e);
    }
  }

  @override
  Future<List<MovieDto>> getPopularMoviesWeek() async {
    try {
      final response = await dioClient
          .get(Endpoints.media_type + Endpoints.time_window_week);
      if (response.statusCode == 200) {
        final listMovieDto = (response.data['results'] as List)
            .map((elt) => MovieDto.fromJson(elt))
            .toList();
        return listMovieDto;
      } else {
        throw ServerException(response);
      }
    } on DioError catch (e) {
      throw ServerException(e);
    }
  }
}
