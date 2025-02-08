import '../../../../core/error/error_imports.dart';
import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';
import '../converters.dart';
import '../infrastructure_imports.dart';

/// This class implements [RemoteRepository] class, located in
/// Application layer.
class RemoteRepositoryImpl implements RemoteRepository {
  final RemoteDataSource remoteDataSource;
  RemoteRepositoryImpl({required this.remoteDataSource});
  @override
  Future<List<Movie>> getPopularMoviesDay() async {
    try {
      final listMovieDto = await remoteDataSource.getPopularMoviesDay();

      return listMovieDto
          .map(
            (elt) => movieDtoToMovieConverter(elt),
          )
          .toList();
    } on ServerException {
      rethrow;
    }
  }

  @override
  Future<List<Movie>> getPopularMoviesWeek() async {
    try {
      final listMovieDto = await remoteDataSource.getPopularMoviesWeek();
      return listMovieDto
          .map(
            (elt) => movieDtoToMovieConverter(elt),
          )
          .toList();
    } on ServerException {
      rethrow;
    }
  }
}
