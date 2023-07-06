import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';

class MovieFixture {
  static const movie1 = Movie(
      id: 1,
      movieTitle: 'Day shift',
      movieDescription: 'Horror movie',
      movieCover: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      movieDate: '2022-10-1',
      moviePopularity: 100.799);

  static const movie2 = Movie(
      id: 2,
      movieTitle: 'Scream',
      movieDescription: 'Horror movie',
      movieCover: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      movieDate: '2018-04-25',
      moviePopularity: 38.799);

  static const movie3 = Movie(
      id: 3,
      movieTitle: 'Fast and Furious',
      movieDescription: 'Action movie',
      movieCover: '/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
      movieDate: '2020-04-25',
      moviePopularity: 155.799);

  static final listMovie1 = [movie1, movie2];
  static final listMovie2 = [movie1, movie2, movie3];
  static final listMovie3 = [movie1, movie2];
}
