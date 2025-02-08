import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';

part 'delete_movie_controller.g.dart';

@riverpod
class DeleteMovieController extends _$DeleteMovieController {
  @override
  FutureOr<Notification> build() {
    return Notification.deleteSuccess();
  }

  Future<void> deleteMovie(Movie movie) async {
    //state = AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final onLocalDb = ref.watch(onLocalDatabaseProvider);
      final notif = await onLocalDb.deleteMovieUseCase(movie);
      return notif;
    });
  }
}
