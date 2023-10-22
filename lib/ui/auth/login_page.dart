import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';
import 'auth_widget.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GrogColors.ScaffoldBackGroundColor,
      key: scaffoldKey,
      body: Column(
        children: <Widget>[
          Gap(size.height * 0.05),
          SvgPicture.asset(
            Assets.appLogo,
          ),
          Gap(size.height * 0.05),
          GestureDetector(
            child: Image.asset(
              Assets.loginImage,
              fit: BoxFit.contain,
            ),
            onTap: () {
              context.go('/intro');
            },
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    child: AuthSocialWidget(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
