import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/converters.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

import '../../../../fixture/movie_dto_fixture.dart';
import '../../../../fixture/movie_fixture.dart';
import '../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockLocalDataSource mockLocalDataSource;
  late LocalDataBaseRepositoryImpl localRepo;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    localRepo = LocalDataBaseRepositoryImpl(localData: mockLocalDataSource);
  });

  group('saveMovie function:', () {
    var movie = MovieFixture.movie1;
    var movieDto = movieToMovieDtoConverter(movie);
    var excep = LocalDatabaseException('database error');
    test(
      'Should not return anything if the operation is successful',
      () async {
        // Arrange
        when(mockLocalDataSource.addMovieToDatabase(any))
            .thenAnswer((_) async => Future.value());

        // Act
        final result = localRepo.saveMovie(movie);

        // Assert
        expect(result, isA<void>());
        verify(mockLocalDataSource.addMovieToDatabase(movieDto));
        verifyNoMoreInteractions(mockLocalDataSource);
      },
    );

    test(
      'Should rethrow a LocalDatabaseException if the operation is unsuccessful',
      () async {
        // Arrange
        when(mockLocalDataSource.addMovieToDatabase(any)).thenThrow(excep);

        // Act
        final result = localRepo.saveMovie;

        // Assert
        expect(() => result(movie), throwsA(isA<LocalDatabaseException>()));
      },
    );
  });

  group('deleteMovie function:', () {
    var movie = MovieFixture.movie1;
    var movieDto = movieToMovieDtoConverter(movie);
    var excep = LocalDatabaseException('database error');
    test(
      'Should not return anything if the operation is successful',
      () async {
        // Arrange
        when(mockLocalDataSource.deleteMovieFromDatabase(any))
            .thenAnswer((_) async => Future.value());

        // Act
        final result = localRepo.deleteMovie(movie);

        // Assert
        expect(result, isA<void>());
        verify(mockLocalDataSource.deleteMovieFromDatabase(movieDto));
        verifyNoMoreInteractions(mockLocalDataSource);
      },
    );

    test(
      'Should rethrow a LocalDatabaseException if the operation is unsuccessful',
      () async {
        // Arrange
        when(mockLocalDataSource.deleteMovieFromDatabase(any)).thenThrow(excep);

        // Act
        final result = localRepo.deleteMovie;

        // Assert
        expect(() => result(movie), throwsA(isA<LocalDatabaseException>()));
      },
    );
  });

  group('watchAllMovies function:', () {
    var listMovie = MovieFixture.listMovie1;
    var listMovieDto = MovieDtoFixture.listMovieDto;
    var excep = LocalDatabaseException('database error');
    Stream<List<MovieDto>> showListMovies() async* {
      yield listMovieDto;
    }

    test(
      'Should return a list of saved movies if the operation is successful',
      () async {
        // Arrange
        when(mockLocalDataSource.watchAllMoviesFromDatabase())
            .thenAnswer((_) => showListMovies());

        // Act
        final result = localRepo.watchAllMovies();

        // Assert
        expect(await result.first, listMovie);
        verify(mockLocalDataSource.watchAllMoviesFromDatabase());
      },
    );

    test(
      'Should rethrow a LocalDatabaseException if the operation is unsuccessful',
      () async {
        // Arrange
        when(mockLocalDataSource.watchAllMoviesFromDatabase()).thenThrow(excep);

        // Act
        final result = localRepo.watchAllMovies;

        // Assert
        expect(() => result(), throwsA(isA<LocalDatabaseException>()));
      },
    );
  });
}
