// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/app_utility/app_utility_imports.dart';
import '../../domain/domain_imports.dart';
import '../presentation_imports.dart';

class Details extends ConsumerStatefulWidget {
  const Details({super.key, required this.movie});
  final Movie movie;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailsState();
}

class _DetailsState extends ConsumerState<Details> {
  final toast = FToast();

  @override
  void initState() {
    super.initState();
    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final asyncNotif = ref.watch(detailsControllerProvider);
    const String imageUrl = "https://image.tmdb.org/t/p/w500/";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie details',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                constraints:
                    const BoxConstraints.expand(height: 500, width: 330),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        imageUrl + widget.movie.movieCover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.movie.movieTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Release date: ${widget.movie.movieDate}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Popularity: ${widget.movie.moviePopularity}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: Text(widget.movie.movieDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButtonIcon(
                onPressFunction: () {
                  ref
                      .read(detailsControllerProvider.notifier)
                      .saveMovie(widget.movie);
                  toast.showToast(
                    toastDuration: const Duration(milliseconds: 1800),
                    gravity: ToastGravity.SNACKBAR,
                    child: asyncNotif.value!.maybeWhen(
                      saveSuccess: (message) => BuildToast(toastMsg: message),
                      saveError: (failure) =>
                          BuildToast(toastMsg: failure.failureMsg),
                      orElse: () => const Text(''),
                    ),
                  );
                },
                label: Text(
                  'Save to watch later',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                icon: const Icon(Icons.watch_later),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
