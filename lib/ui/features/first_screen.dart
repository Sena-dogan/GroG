import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/router/app_router.dart';

class FirstScreen extends ConsumerWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: const Text('bottom_nav_first').tr()),
          ElevatedButton(
            onPressed: () {
              context.go(SGRoute.secondScreen.route);
            },
            child: const Text('bottom_nav_second').tr(),
          ),
        ],
      ),
    );
  }
}
