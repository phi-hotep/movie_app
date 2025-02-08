import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/app_utility/app_utility_imports.dart';
import '../../domain/domain_imports.dart';
import '../presentation_imports.dart';

class BuildListSavedMovies extends ConsumerStatefulWidget {
  const BuildListSavedMovies({super.key, required this.listMovie});
  final List<Movie> listMovie;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BuildListSavedFilmsState();
}

class _BuildListSavedFilmsState extends ConsumerState<BuildListSavedMovies> {
  final toast = FToast();

  @override
  void initState() {
    super.initState();
    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    final asyncNotif = ref.watch(deleteMovieControllerProvider);
    const String imageUrl = "https://image.tmdb.org/t/p/w500/";
    return widget.listMovie.isEmpty
        ? Center(
            child: Text(
              'No movie saved',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          )
        : ListView.builder(
            itemCount: widget.listMovie.length,
            itemBuilder: (context, index) {
              return Slidable(
                endActionPane: ActionPane(
                  motion: const BehindMotion(),
                  children: [
                    SlidableAction(
                      spacing: 1,
                      onPressed: (context) {
                        ref
                            .read(deleteMovieControllerProvider.notifier)
                            .deleteMovie(
                                widget.listMovie[index]); // delete film
                        toast.showToast(
                          toastDuration: const Duration(milliseconds: 1800),
                          gravity: ToastGravity.SNACKBAR,
                          child: asyncNotif.value!.maybeWhen(
                              deleteSuccess: (message) =>
                                  BuildToast(toastMsg: message),
                              deleteError: (failure) =>
                                  BuildToast(toastMsg: failure.failureMsg),
                              orElse: () => const Text('')),
                        );
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    )
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Details(movie: widget.listMovie[index]);
                        },
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Container(
                      constraints:
                          const BoxConstraints.expand(height: 50, width: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              imageUrl + widget.listMovie[index].movieCover),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      widget.listMovie[index].movieTitle,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.play_circle),
                    ),
                  ),
                ),
              );
            },
          );
  }
}
