import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/router/app_router.dart';
import '../../states/theme_mode_state.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(child: Text('Second Screen')),
        ElevatedButton(
          onPressed: () => context.go(SGRoute.firstScreen.route),
          child: const Text('First Screen'),
        ),
        ElevatedButton(
          onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
          child: const Text('Change Theme'),
        ),
      ],
    ));
  }
}
