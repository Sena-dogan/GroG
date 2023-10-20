// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../data/getstore/get_store_helper.dart';
import '../../di/components/service_locator.dart';
import '../../ui/auth/login_page.dart';
import '../../ui/error/not_found_page.dart';
import '../../ui/features/first_screen.dart';
import '../../ui/features/second_screen.dart';
import 'fade_extension.dart';

GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

enum SGRoute {
  home,
  firstScreen,
  secondScreen,
  login;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.firstScreen.route,
    routes: <GoRoute>[
      GoRoute(
        path: SGRoute.login.route,
        builder: (BuildContext context, GoRouterState state) => LoginPage(),
      ).fade(),
      GoRoute(
        path: SGRoute.login.route,
        builder: (BuildContext context, GoRouterState state) =>
            const FirstScreen(),
      ).fade(),
      GoRoute(
        path: SGRoute.firstScreen.route,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage<FirstScreen>(child: FirstScreen()),
      ).fade(),
      GoRoute(
        path: SGRoute.secondScreen.route,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage<SecondScreen>(child: SecondScreen()),
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
  if (!(getStoreHelper.getToken() != null)) {
    return SGRoute.login.route;
  }
  return null;
};
