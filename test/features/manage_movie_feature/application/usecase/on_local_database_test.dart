import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/features/manage_movie_feature/application/application_imports.dart';

import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';

import '../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockLocalDataBaseRepository mockLocalDataBaseRepository;
  late OnLocalDatabase onLocalDatabase;

  setUp(() {
    mockLocalDataBaseRepository = MockLocalDataBaseRepository();
    onLocalDatabase = OnLocalDatabase(mockLocalDataBaseRepository);
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

  var localExcep = LocalDatabaseException('Error');
  var localFail = LocalFailure(localExcep);

  Stream<List<Movie>> listMovieStream() async* {
    yield listMovie;
  }

  test(
    'Should return a ListMovie object stream',
    () async {
      // Arrange
      when(mockLocalDataBaseRepository.watchAllMovies())
          .thenAnswer((_) => listMovieStream());

      // Act
      final result = onLocalDatabase.showSavedMoviesUseCase();

      // Assert
      expect(await result.first, ListMovie.success(list: listMovie));
      verify(mockLocalDataBaseRepository.watchAllMovies());
    },
  );

  group('saveMovieUseCase:', () {
    test(
      'Should save movie and there is no error',
      () async {
        // Arrange
        when(mockLocalDataBaseRepository.saveMovie(any))
            .thenAnswer((_) async => Future.value());

        // Act
        final result = await onLocalDatabase.saveMovieUseCase(movie);

        // Assert
        expect(result, const Notification.saveSuccess());
        verify(mockLocalDataBaseRepository.saveMovie(movie));
      },
    );

    test(
      'Should save a movie and there is an error',
      () async {
        // Arrange
        when(mockLocalDataBaseRepository.saveMovie(any)).thenThrow(localExcep);

        // Act
        final result = await onLocalDatabase.saveMovieUseCase(movie);

        // Assert
        expect(result, Notification.saveError(fail: localFail));
        verify(mockLocalDataBaseRepository.saveMovie(movie));
      },
    );
  });

  group('deleteMovieUseCase', () {
    test(
      'Should delete a movie and there is no error',
      () async {
        // Arrange
        when(mockLocalDataBaseRepository.deleteMovie(any))
            .thenAnswer((_) async => Future.value());

        // Act
        final result = await onLocalDatabase.deleteMovieUseCase(movie);

        // Assert
        expect(result, const Notification.deleteSuccess());
        verify(mockLocalDataBaseRepository.deleteMovie(movie));
      },
    );

    test(
      'Should delete a movie and there is an error',
      () async {
        // Arrange
        when(mockLocalDataBaseRepository.deleteMovie(any))
            .thenThrow(localExcep);

        // Act
        final result = await onLocalDatabase.deleteMovieUseCase(movie);

        // Assert
        expect(result, Notification.deleteError(fail: localFail));
        verify(mockLocalDataBaseRepository.deleteMovie(movie));
      },
    );
  });
}
