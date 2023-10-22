// ignore_for_file: prefer_function_declarations_over_variables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../data/getstore/get_store_helper.dart';
import '../../di/components/service_locator.dart';
import '../../ui/auth/login_page.dart';
import '../../ui/error/not_found_page.dart';
import '../../ui/features/first_screen.dart';
import '../../ui/features/second_screen.dart';
import '../../ui/home/home_page.dart';
import '../../ui/pages/intro_page.dart';
import '../../ui/settings/settings_page.dart';
import 'fade_extension.dart';

GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

enum SGRoute {
  home,
  firstScreen,
  secondScreen,
  login,
  intro,
  settings;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.login.route,
    routes: <GoRoute>[
      GoRoute(
        path: SGRoute.login.route,
        builder: (BuildContext context, GoRouterState state) => LoginPage(),
      ).fade(),
      GoRoute(
        path: SGRoute.home.route,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ).fade(),
      GoRoute(
        path: SGRoute.settings.route,
        builder: (BuildContext context, GoRouterState state) =>
            const SettingsPage(),
      ).fade(),
      GoRoute(
        path: SGRoute.intro.route,
        builder: (BuildContext context, GoRouterState state) =>
            const IntroPage(),
        redirect: _authGuard
      ).fade(),
      GoRoute(
        path: SGRoute.firstScreen.route,
        builder: (BuildContext context, GoRouterState state) =>
            const FirstScreen(),
      ).fade(),
      GoRoute(
        path: SGRoute.secondScreen.route,
        builder: (BuildContext context, GoRouterState state) =>
            const SecondScreen(),
      ).fade(),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) => NotFoundPage(
      title: 'errorState ${state.error} - ${state.location}',
    ),
  );
  GoRouter get getGoRouter => goRoute;
}

final String? Function(BuildContext context, GoRouterState state) _authGuard =
    (BuildContext context, GoRouterState state) {
  if (FirebaseAuth.instance.currentUser == null) {
    debugPrint('SGGoRouter: AuthGuard: No user found, redirecting to login');
    return SGRoute.intro.route; //SGRoute.login.route;
  }
  return SGRoute.intro.route;
};
