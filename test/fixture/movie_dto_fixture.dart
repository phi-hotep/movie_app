import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

class MovieDtoFixture {
  static const movieDto1 = MovieDto(
      id: 1,
      originalTitle: 'Day shift',
      overview: 'Horror movie',
      posterPath: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      releaseDate: '2022-10-1',
      popularity: 100.799);

  static const movieDto2 = MovieDto(
      id: 2,
      originalTitle: 'Scream',
      overview: 'Horror movie',
      posterPath: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      releaseDate: '2018-04-25',
      popularity: 38.799);

  static final listMovieDto = [movieDto1, movieDto2];
}
