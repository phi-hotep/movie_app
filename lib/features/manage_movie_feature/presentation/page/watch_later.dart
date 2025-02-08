import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation_imports.dart';

final _pageStorageBucketWatchLater = PageStorageBucket();
const _watchLaterPageStorageKey = PageStorageKey<String>('watch later');

class WatchLater extends ConsumerWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncWatchLater = ref.watch(watchLaterControllerProvider);

    return PageStorage(
      bucket: _pageStorageBucketWatchLater,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Watch later',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: AsyncWatchLater.value!.whenOrNull(() => null,
              success: (listSavedMovies) => BuildListSavedMovies(
                  key: _watchLaterPageStorageKey, listMovie: listSavedMovies)),
        ),
      ),
    );
  }
}
