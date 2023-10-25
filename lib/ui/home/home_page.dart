import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../utils/assets.dart';
import '../utils/colors.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            GrogColors.HomeLinearColor1,
            GrogColors.HomeLinearColor2,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: size.height * 0.1,
          title: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.03),
              child: SvgPicture.asset(
                Assets.appLogo,
                height: size.height * 0.07,
              ),
            ),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                Assets.homeImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
