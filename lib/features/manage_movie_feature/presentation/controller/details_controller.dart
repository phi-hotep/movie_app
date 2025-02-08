import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';

part 'details_controller.g.dart';

@riverpod
class DetailsController extends _$DetailsController {
  @override
  FutureOr<Notification> build() {
    return Notification.saveSuccess();
  }

  Future<void> saveMovie(Movie movie) async {
    state = await AsyncValue.guard(() async {
      final onLocalDb = ref.watch(onLocalDatabaseProvider);
      final notif = await onLocalDb.saveMovieUseCase(movie);
      return notif;
    });
  }
}
