import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/navigation/navigator_imports.dart';
import 'core/sharedpreferences/app_shared_preferences.dart';
import 'core/theme/theme_imports.dart';
import 'features/change_theme_feature/presentation/presentation_imports.dart';

class MovieApp extends ConsumerWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldMessengerState> globalScaffold =
        GlobalKey<ScaffoldMessengerState>();

    final router = ref.watch(routerProvider).router;
    final isDark = ref.watch(appThemeControllerProvider).isDark;
    final theme = ref
            .watch(sharedPreferencesProvider)
            .getBool(AppSharedPreferences.kUserMode) ??
        false;

    return MaterialApp.router(
      title: 'MovieApp',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: theme ? MovieAppTheme.dark() : MovieAppTheme.light(),
      darkTheme: MovieAppTheme.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      scaffoldMessengerKey: globalScaffold,
    );
  }
}
