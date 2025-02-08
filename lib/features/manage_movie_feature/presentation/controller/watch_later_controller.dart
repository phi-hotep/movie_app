import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/application_imports.dart';
import '../../domain/domain_imports.dart';

part 'watch_later_controller.g.dart';

@riverpod
class WatchLaterController extends _$WatchLaterController {
  @override
  FutureOr<ListMovie> build() {
    displayAllMovies();
    return ListMovie();
  }

  void displayAllMovies() {
    ref.watch(onLocalDatabaseProvider).showSavedMoviesUseCase().listen((event) {
      state = AsyncValue.data(event);
    });
  }
}

// final watchLaterControllerProvider =
//     StateNotifierProvider<WatchLaterController, ListMovie>((ref) {
//   final repo = ref.watch(onLocalDatabaseProvider);
//   return WatchLaterController(onLocalDatabase: repo);
// });

// class WatchLaterController extends StateNotifier<ListMovie> {
//   final OnLocalDatabase onLocalDatabase;
//   WatchLaterController({required this.onLocalDatabase})
//       : super(const ListMovie()) {
//     displayAllMovies();
//   }

//   void displayAllMovies() {
//     onLocalDatabase.showSavedMoviesUseCase().listen((event) {
//       state = event;
//     });
//   }
// }
