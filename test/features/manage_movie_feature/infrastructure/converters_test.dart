import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/core/database/database_imports.dart';
import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/converters.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

import '../../../fixture/movie_dto_fixture.dart';
import '../../../fixture/movie_fixture.dart';

void main() {
  Movie movie = MovieFixture.movie1;

  MovieDto movieDto = MovieDtoFixture.movieDto1;

  MovieTableData movieTableData = const MovieTableData(
    id: 1,
    originalTitleEntry: 'Day shift',
    overviewEntry: 'Horror movie',
    posterPathEntry: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
    releaseDateEntry: '2022-10-1',
    popularityEntry: 100.799,
  );

  Insertable<MovieTableData> movieDatabase = MovieTableCompanion.insert(
    originalTitleEntry: 'Day shift',
    overviewEntry: 'Horror movie',
    posterPathEntry: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
    releaseDateEntry: '2022-10-1',
    popularityEntry: 100.799,
  );

  test(
    'movieToMovieDtoConverter function should return a MovieDto object',
    () async {
      // Act
      final result = movieToMovieDtoConverter(movie);

      // Assert
      expect(result, isA<MovieDto>());
      expect(result, movieDto);
    },
  );

  test(
    'movieDtoToMovieConverter function should return a Movie object',
    () async {
      // Act
      final result = movieDtoToMovieConverter(movieDto);

      // Assert
      expect(result, isA<Movie>());
      expect(result, movie);
    },
  );

  test(
    'appMovieDataToMovieDtoConverter function should return a MovieDto object',
    () async {
      // Act

      final result = appMovieDataToMovieDtoConverter(movieTableData);
      // Assert
      expect(result, isA<MovieDto>());
      expect(result, movieDto);
    },
  );

  test(
    'movieDtoToAppMovieDataConverter function should return a AppMovieData object',
    () async {
      // Act
      final result = movieDtoToAppMovieDataConverter(movieDto);
      // Assert
      expect(result, isA<Insertable<MovieTableData>>());
      expect(result, movieDatabase);
    },
  );
}
