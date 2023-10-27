import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';
import 'widgets/alcohol_category.dart';
import 'widgets/category_widget.dart';
import 'widgets/search_widget.dart';
import 'widgets/title_widget.dart';

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
          toolbarHeight: size.height * 0.08,
          title: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.03),
              child: SvgPicture.asset(
                Assets.appLogoSmall,
              ),
            ),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                Assets.homePostImage,
              ),
              const Gap(37),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.04),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: SearchWidget(),
                ),
              ),
              const Gap(33),
              const TitleWidget(
                title: 'Categories',
              ),
              const Gap(25),
              CategoryWidget(
                boxHeight: 129.2,
                boxWidth: 0.9,
                categoryName: 'COCKTAILS',
                textSize: 24,
                icon: Image.asset(
                  Assets.homeIconCocktail,
                  width: 20,
                ),
                image: Assets.homeCatCocktails,
              ),
              const Gap(39.8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CategoryWidget(
                    boxHeight: 100,
                    boxWidth: 0.43,
                    categoryName: 'SURPRISE ME',
                    textSize: 20,
                    icon: Image.asset(
                      Assets.homeIconSurpriseMe,
                      width: 20,
                    ),
                    image: Assets.homeCatSurpriseMe,
                  ),
                  Gap(size.width * 0.05),
                  CategoryWidget(
                    boxHeight: 100,
                    boxWidth: 0.43,
                    categoryName: 'MOCKTAILS',
                    textSize: 20,
                    icon: Image.asset(
                      Assets.homeIconMocktail,
                      width: 20,
                    ),
                    image: Assets.homeCatMocktail,
                  ),
                ],
              ),
              const Gap(62),
              const TitleWidget(
                title: 'Alcohols',
              ),
              const Gap(25),
              Padding(
                padding: EdgeInsets.all(size.width * 0.05),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const AlcoholCategory(
                          image: Assets.rum,
                          alcoholName: 'RUM',
                        ),
                        Gap(size.width * 0.05),
                        const AlcoholCategory(
                          image: Assets.whiskey,
                          alcoholName: 'WHISKEY',
                        ),
                        Gap(size.width * 0.05),
                        const AlcoholCategory(
                          image: Assets.tequila,
                          alcoholName: 'TEQUILA',
                        ),
                      ],
                    ),
                    const Gap(41),
                    Row(
                      children: <Widget>[
                        const AlcoholCategory(
                          image: Assets.gin,
                          alcoholName: 'GIN',
                        ),
                        Gap(size.width * 0.05),
                        const AlcoholCategory(
                          image: Assets.vodka,
                          alcoholName: 'VODKA',
                        ),
                        Gap(size.width * 0.05),
                        const AlcoholCategory(
                          image: Assets.brandy,
                          alcoholName: 'BRANDY',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
