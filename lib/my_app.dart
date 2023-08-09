import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/theme.dart';
import 'states/theme_mode_state.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeModeState currentTheme = ref.watch(themeProvider);

    return MaterialApp.router(
      //routerConfig: getIt<SGGoRouter>().getGoRouter,
      /// Localization is not available for the title.
      title: 'Flutter Production Boilerplate',

      /// Theme stuff
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

/*
Platform  Firebase App Id
web       1:77433905305:web:cb915313c3cc2069bd1808
android   1:77433905305:android:1d3f629b1f6a3a37bd1808
ios       1:77433905305:ios:102ecfd91cace2f2bd1808
macos     1:77433905305:ios:bfe59e46f22abf32bd1808
*/
