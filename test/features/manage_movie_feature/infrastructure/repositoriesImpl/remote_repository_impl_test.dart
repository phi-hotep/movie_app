import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

import '../../../../fixture/movie_dto_fixture.dart';
import '../../../../fixture/movie_fixture.dart';
import '../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockRemoteDataSource mockRemoteDataSource;
  late RemoteRepositoryImpl remoteRepositoryImpl;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    remoteRepositoryImpl =
        RemoteRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  List<MovieDto> listMovieDto = MovieDtoFixture.listMovieDto;
  List<Movie> listMovie = MovieFixture.listMovie1;
  var serverExpt = ServerException('error');
  group('getPopularMoviesDay:', () {
    test(
      'Should return a List<Movie> ',
      () async {
        // Arrange
        when(mockRemoteDataSource.getPopularMoviesDay())
            .thenAnswer((_) async => listMovieDto);

        // Act
        final result = await remoteRepositoryImpl.getPopularMoviesDay();

        // Assert
        expect(result, listMovie);
        verify(mockRemoteDataSource.getPopularMoviesDay());
      },
    );

    test(
      'Should throw ServerException',
      () async {
        // Arrange
        when(mockRemoteDataSource.getPopularMoviesDay()).thenThrow(serverExpt);

        // Act
        final result = remoteRepositoryImpl.getPopularMoviesDay;

        // Assert
        expect(() => result(), throwsA(isA<ServerException>()));
        verify(mockRemoteDataSource.getPopularMoviesDay());
      },
    );
  });

  group('getPopularMoviesWeek:', () {
    test(
      'Should return a List<Movie> ',
      () async {
        // Arrange
        when(mockRemoteDataSource.getPopularMoviesWeek())
            .thenAnswer((_) async => listMovieDto);

        // Act
        final result = await remoteRepositoryImpl.getPopularMoviesWeek();

        // Assert
        expect(result, listMovie);
        verify(mockRemoteDataSource.getPopularMoviesWeek());
      },
    );

    test(
      'Should throw ServerException',
      () async {
        // Arrange
        when(mockRemoteDataSource.getPopularMoviesWeek()).thenThrow(serverExpt);

        // Act
        final result = remoteRepositoryImpl.getPopularMoviesWeek;

        // Assert
        expect(() => result(), throwsA(isA<ServerException>()));
        verify(mockRemoteDataSource.getPopularMoviesWeek());
      },
    );
  });
}
