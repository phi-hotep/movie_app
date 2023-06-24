// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/features/manage_movie_feature/application/application_imports.dart';
import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';

import '../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockRemoteRepository mockRemoteRepository;
  late OnRemote onRemote;

  setUp(() {
    mockRemoteRepository = MockRemoteRepository();
    onRemote = OnRemote(mockRemoteRepository);
  });

// We create all these variables for test purpose
  var movie = const Movie(
      id: 1,
      movieTitle: 'title',
      movieDescription: 'hot movie',
      movieCover: 'cover',
      movieDate: '06/05/2023',
      moviePopularity: 189);

  var listMovie = <Movie>[movie];
  var serverExcep = ServerException('Error');
  var remoteFail = RemoteFailure(serverExcep);

  group('getListMovieDayUseCase:', () {
    test(
      'Should return a ListMovie object in SUCCESS state',
      () async {
        // Arrange
        when(mockRemoteRepository.getPopularMoviesDay())
            .thenAnswer((_) async => listMovie);

        // Act
        final result = await onRemote.getListMovieDayUseCase();

        // Assert
        expect(result, ListMovie.success(list: listMovie));
        verify(mockRemoteRepository.getPopularMoviesDay());
      },
    );

    test(
      'Should return a ListMovie object in FAILURE state',
      () async {
        // Arrange

        when(mockRemoteRepository.getPopularMoviesDay()).thenThrow(serverExcep);

        // Act
        final result = await onRemote.getListMovieDayUseCase();

        // Assert

        expect(result, ListMovie.failure(fail: remoteFail));
        verify(mockRemoteRepository.getPopularMoviesDay());
      },
    );
  });

  group('getListMovieWeekUseCase:', () {
    test(
      'Should return a ListMovie object in SUCCESS state',
      () async {
        // Arrange
        when(mockRemoteRepository.getPopularMoviesWeek())
            .thenAnswer((_) async => listMovie);

        // Act
        final result = await onRemote.getListMovieWeekUseCase();

        // Assert
        expect(result, ListMovie.success(list: listMovie));
        verify(mockRemoteRepository.getPopularMoviesWeek());
      },
    );

    test(
      'Should return a ListMovie object in FAILURE state',
      () async {
        // Arrange

        when(mockRemoteRepository.getPopularMoviesWeek())
            .thenThrow(serverExcep);

        // Act
        final result = await onRemote.getListMovieWeekUseCase();

        // Assert

        expect(result, ListMovie.failure(fail: remoteFail));
        verify(mockRemoteRepository.getPopularMoviesWeek());
      },
    );
  });
}
