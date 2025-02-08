import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';

part 'movie_of_day_controller.g.dart';

/// This Notifier handle current state and emits it to UI via
/// the provider automatically generated.
@riverpod
class MovieOfDayController extends _$MovieOfDayController {
  @override
  FutureOr<ListMovie> build() {
    ref.keepAlive();
    displayListMovie();

    return ListMovie();
  }

  Future<void> displayListMovie() async {
    state = await AsyncValue.guard(() async {
      return await ref.watch(onRemoteProvider).getListMovieDayUseCase();
    });
  }
}
