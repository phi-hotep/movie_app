import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation_imports.dart';

class MovieOfDay extends ConsumerStatefulWidget {
  const MovieOfDay({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieOfDayState();
}

class _MovieOfDayState extends ConsumerState<MovieOfDay> {
  @override
  Widget build(BuildContext context) {
    final asyncListMovie = ref.watch(movieOfDayControllerProvider);

    return RefreshIndicator(
      onRefresh: () async {
        return ref.refresh(movieOfDayControllerProvider);
      },
      backgroundColor: Theme.of(context).primaryColor,
      displacement: 20.0,
      edgeOffset: 20.0,
      child: Center(
        //3
        child: asyncListMovie.value!.when(
            () => const CircularProgressIndicator.adaptive(),
            success: (list) => BuildListOfMovies(listMovie: list),
            failure: (fail) => BuildServerErrorMsg(errorMsg: fail.errorMsg)),
      ),
    );
  }
}
