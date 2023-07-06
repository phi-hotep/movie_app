import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/core/network/network_imports.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

import '../../../../../fixture/json_fixture.dart';
import '../../../../../fixture/movie_dto_fixture.dart';
import '../../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockDioClient mockDioClient;
  late RemoteDataSourceImpl remoteDataSourceImpl;

  setUp(() {
    mockDioClient = MockDioClient();
    remoteDataSourceImpl = RemoteDataSourceImpl(dioClient: mockDioClient);
  });

  var endPointDay = Endpoints.media_type + Endpoints.time_window_day;
  var endPointWeek = Endpoints.media_type + Endpoints.time_window_week;
  final json = jsonDecode(jsonFixture('data.json'));
  final listMovieDto = MovieDtoFixture.listMovieDto;
  group('getPopularMoviesDay:', () {
    test(
      'Should return a list of MovieDto when the reponse statuCode is 200 (success)',
      () async {
        // Arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: endPointDay),
            statusCode: 200,
            data: json,
          ),
        );

        // Act
        final result = await remoteDataSourceImpl.getPopularMoviesDay();

        // Assert
        expect(result, listMovieDto);
        verify(mockDioClient.get(endPointDay));
      },
    );

    test(
      'Should throw a ServerException when the statusCode is not 200 (unsuccess)',
      () async {
        // Arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: endPointDay),
            statusCode: 404,
          ),
        );

        // Act
        final result = remoteDataSourceImpl.getPopularMoviesDay;

        // Assert
        expect(() => result(), throwsA(isA<ServerException>()));
        verify(mockDioClient.get(endPointDay));
      },
    );
  });

  group('getPopularMoviesWeek:', () {
    test(
      'Should return a list of MovieDto when the reponse statuCode is 200 (success)',
      () async {
        // Arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: endPointDay),
            statusCode: 200,
            data: json,
          ),
        );

        // Act
        final result = await remoteDataSourceImpl.getPopularMoviesWeek();

        // Assert
        expect(result, listMovieDto);
        verify(mockDioClient.get(endPointWeek));
      },
    );

    test(
      'Should throw a ServerException when the statusCode is not 200 (unsuccess)',
      () async {
        // Arrange
        when(mockDioClient.get(any)).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: endPointDay),
            statusCode: 404,
          ),
        );

        // Act
        final result = remoteDataSourceImpl.getPopularMoviesWeek;

        // Assert
        expect(() => result(), throwsA(isA<ServerException>()));
        verify(mockDioClient.get(endPointWeek));
      },
    );
  });
}
