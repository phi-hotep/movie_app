import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';

part 'movie_of_week_controller.g.dart';

/// This Notifier handle current state and emits it to UI via
/// the provider automatically generated.
@riverpod
class MovieOfWeekController extends _$MovieOfWeekController {
  @override
  FutureOr<ListMovie> build() {
    ref.keepAlive();
    displayListMovie();
    return ListMovie();
  }

  Future<void> displayListMovie() async {
    state = await AsyncValue.guard(() async {
      return await ref.watch(onRemoteProvider).getListMovieWeekUseCase();
    });
  }
}

// /// This class handle current state and emits it to UI that can be rebuild.
// class MovieOfWeekController extends StateNotifier<ListMovie> {
//   final OnRemote onRemote;
//   MovieOfWeekController({required this.onRemote}) : super(const ListMovie()) {
//     displayListMovie();
//   }

//   void displayListMovie() async {
//     state = await onRemote.getListMovieWeekUseCase();
//   }
// }

// ///This provider makes access to the controller
// final movieOfWeekControllerProvider =
//     StateNotifierProvider<MovieOfWeekController, ListMovie>((ref) {
//   final useCase = ref.watch(onRemoteProvider);
//   return MovieOfWeekController(onRemote: useCase);
// });
