import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/router/app_router.dart';
import '../../config/theme/theme_logic.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: const Text('bottom_nav_second').tr()),
        ElevatedButton(
          onPressed: () => context.go(SGRoute.firstScreen.route),
          child: const Text('bottom_nav_first').tr(),
        ),
        ElevatedButton(
          onPressed: () => ref.read(themeLogicProvider.notifier).toggleTheme(),
          child: const Text('toggle_theme').tr(),
        ),
        ElevatedButton(
            onPressed: () => context.setLocale(
                context.locale == const Locale('en')
                    ? const Locale('tr')
                    : const Locale('en')),
            child: const Text('toggle_language').tr()),
      ],
    ));
  }
}
