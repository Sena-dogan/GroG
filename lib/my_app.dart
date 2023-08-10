import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/router/app_router.dart';
import 'config/theme/theme_logic.dart';
import 'config/theme/theme_ui_model.dart';
import 'di/components/service_locator.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeUiModel currentTheme = ref.watch(themeLogicProvider);
    return MaterialApp.router(
      routerConfig: getIt<SGGoRouter>().getGoRouter,

      /// Localization is not available for the title.
      title: 'Flutter Production Boilerplate',

      /// Theme stuff
      theme: FlexThemeData.light(
        scheme: FlexScheme.hippieBlue,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.hippieBlue,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      themeMode: currentTheme.themeMode,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations(<DeviceOrientation>[
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
