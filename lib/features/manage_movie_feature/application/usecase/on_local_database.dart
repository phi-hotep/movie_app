import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/error_imports.dart';
import '../../domain/domain_imports.dart';
import '../application_imports.dart';

part 'on_local_database.g.dart';

/// Here the [onLocalDatabaseProvider]
@riverpod
OnLocalDatabase onLocalDatabase(Ref ref) {
  final repo = ref.watch(localDataBaseRepositoryProvider);
  return OnLocalDatabase(repo);
}

class OnLocalDatabase {
  final LocalDataBaseRepository localRepo;
  OnLocalDatabase(this.localRepo);

// Display list of saved movies Use case
  Stream<ListMovie> showSavedMoviesUseCase() {
    final result = localRepo
        .watchAllMovies()
        .map((event) => ListMovie.success(list: event));

    return result;
  }

// Save a movie Use case
  Future<Notification> saveMovieUseCase(Movie movie) async {
    try {
      localRepo.saveMovie(movie);
      return const Notification.saveSuccess();
    } catch (e) {
      return Notification.saveError(
          fail: LocalFailure(e as LocalDatabaseException));
    }
  }

// Delete a movie Use case
  Future<Notification> deleteMovieUseCase(Movie movie) async {
    try {
      localRepo.deleteMovie(movie);
      return const Notification.deleteSuccess();
    } catch (e) {
      return Notification.deleteError(
          fail: LocalFailure(e as LocalDatabaseException));
    }
  }
}
