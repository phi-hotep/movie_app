import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../change_theme_feature/presentation/page/app_theme_button.dart';
import '../presentation_imports.dart';

final _pageStorageBucketTrends = PageStorageBucket();
const _trendsPageStorageKey = PageStorageKey<String>('trends');

const _trendsDayPageStorageKey = PageStorageKey<String>('movie day');
const _trendsWeekPageStorageKey = PageStorageKey<String>('movie week');

class Trends extends ConsumerStatefulWidget {
  const Trends({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrendsState();
}

class _TrendsState extends ConsumerState<Trends>
    with SingleTickerProviderStateMixin {
  late final AnimationController _annimController;

  @override
  initState() {
    super.initState();
    _annimController = AnimationController(
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageStorage(
      bucket: _pageStorageBucketTrends,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Trends',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            leading: const AppThemeButton()
                .animate(
                  delay: 100.ms,
                  controller: _annimController,
                  autoPlay: true,
                  onPlay: (controller) {
                    controller.repeat(
                      reverse: true,
                    );
                  },
                )
                .shimmer(
                  color: const Color.fromARGB(255, 93, 175, 0),
                  duration: 1.seconds,
                ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 93, 175, 0),
              ),
              tabs: [
                Text(
                  'Movies of Day',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'Movies of week',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          body: TabBarView(
            key: _trendsPageStorageKey,
            children: const [
              MovieOfDay(
                key: _trendsDayPageStorageKey,
              ),
              MovieOfWeek(
                key: _trendsWeekPageStorageKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
