import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../ui/features/first_screen.dart';
import '../../ui/features/second_screen.dart';

enum SGRoute {
  home,
  firstScreen,
  secondScreen,
  login,
  register,
  forgotPassword,
  profile,
  editProfile,
  changePassword;

  String get route => toString().replaceAll('SGroute.', '/');
  String get name => toString().replaceAll('SGroute.', '');
}

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.firstScreen.route,
    routes: <GoRoute>[
      GoRoute(
        path: SGRoute.firstScreen.route,
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const MaterialPage<FirstScreen>(child: FirstScreen()),
      ),
      GoRoute(
          path: SGRoute.secondScreen.route,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              const MaterialPage<SecondScreen>(child: SecondScreen())),
    ],
  );
}
