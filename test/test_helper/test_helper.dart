import 'package:mockito/annotations.dart';
import 'package:movie_app/features/manage_movie_feature/application/application_imports.dart';

@GenerateNiceMocks([
  MockSpec<RemoteRepository>(),
  MockSpec<LocalDataBaseRepository>(),
])
void main() {}
