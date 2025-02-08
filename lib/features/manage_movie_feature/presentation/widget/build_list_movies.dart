import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/domain_imports.dart';

class BuildListOfMovies extends ConsumerWidget {
  const BuildListOfMovies({super.key, required this.listMovie});
  final List<Movie> listMovie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String imageUrl = "https://image.tmdb.org/t/p/w500/";
    return ListView.builder(
      key: key,
      itemCount: listMovie.length,
      itemBuilder: (context, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                context.goNamed('details', extra: listMovie[index]);
              },
              child: Row(
                children: [
                  Container(
                    constraints:
                        const BoxConstraints.expand(height: 200, width: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            imageUrl + listMovie[index].movieCover),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          Text(
                            listMovie[index].movieTitle,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Text(
                                listMovie[index].movieDescription,
                                textAlign: TextAlign.center,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
