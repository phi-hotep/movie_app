import 'package:mockito/annotations.dart';
import 'package:movie_app/core/database/database_imports.dart';
import 'package:movie_app/core/network/network_imports.dart';
import 'package:movie_app/features/manage_movie_feature/application/application_imports.dart';
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart';

@GenerateNiceMocks([
  MockSpec<RemoteRepository>(),
  MockSpec<LocalDataBaseRepository>(),
  MockSpec<RemoteDataSource>(),
  MockSpec<LocalDataSource>(),
  MockSpec<DioClient>(),
  MockSpec<MovieDatabase>(),
  MockSpec<MovieDao>(unsupportedMembers: {#alias}),
])
void main() {}
