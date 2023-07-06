import 'package:drift/drift.dart';

import '../../../core/database/database_imports.dart';
import '../domain/domain_imports.dart';
import 'infrastructure_imports.dart';

/// Converts Movie object to MovieDto object
MovieDto movieToMovieDtoConverter(Movie movie) {
  return MovieDto(
    id: movie.id,
    originalTitle: movie.movieTitle,
    overview: movie.movieDescription,
    posterPath: movie.movieCover,
    releaseDate: movie.movieDate,
    popularity: movie.moviePopularity,
  );
}

/// Converts MovieDto object to Movie object
Movie movieDtoToMovieConverter(MovieDto movieDto) {
  return Movie(
    id: movieDto.id,
    movieTitle: movieDto.originalTitle,
    movieDescription: movieDto.overview,
    movieCover: movieDto.posterPath,
    movieDate: movieDto.releaseDate,
    moviePopularity: movieDto.popularity,
  );
}

/// Converts AppMovieData object to MovieDto object
MovieDto appMovieDataToMovieDtoConverter(MovieTableData appMovieData) {
  return MovieDto(
    id: appMovieData.id,
    originalTitle: appMovieData.originalTitleEntry,
    overview: appMovieData.overviewEntry,
    posterPath: appMovieData.posterPathEntry,
    releaseDate: appMovieData.releaseDateEntry,
    popularity: appMovieData.popularityEntry,
  );
}

/// Converts MovieDto object to AppMovieData object
Insertable<MovieTableData> movieDtoToAppMovieDataConverter(MovieDto movieDto) {
  return MovieTableCompanion.insert(
    originalTitleEntry: movieDto.originalTitle,
    overviewEntry: movieDto.overview,
    posterPathEntry: movieDto.posterPath,
    releaseDateEntry: movieDto.releaseDate,
    popularityEntry: movieDto.popularity,
  );
}
