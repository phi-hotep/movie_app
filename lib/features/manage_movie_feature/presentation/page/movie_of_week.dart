import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation_imports.dart';

class MovieOfWeek extends ConsumerStatefulWidget {
  const MovieOfWeek({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilmOfWeekState();
}

class _FilmOfWeekState extends ConsumerState<MovieOfWeek> {
  @override
  Widget build(BuildContext context) {
    final asyncListMovie = ref.watch(movieOfWeekControllerProvider);
    return RefreshIndicator(
      onRefresh: () async {
        return ref.refresh(movieOfWeekControllerProvider);
      },
      backgroundColor: Theme.of(context).primaryColor,
      displacement: 20.0,
      edgeOffset: 20.0,
      //color: ref.watch(appThemeProvider) ? Colors.green : Colors.black,
      child: Center(
        child: asyncListMovie.value!.when(
            () => const CircularProgressIndicator.adaptive(),
            success: (list) => BuildListOfMovies(listMovie: list),
            failure: (fail) => BuildServerErrorMsg(errorMsg: fail.errorMsg)),
      ),
    );
  }
}
