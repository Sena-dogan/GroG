import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../widgets/app_bar_gone.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GrogColors.ScaffoldBackGroundColor,
      appBar: const EmptyAppBar(),
      body: Column(
        children: <Widget>[
          const IntroTexts(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Expanded(
            child: Image.asset(
              'assets/images/intro.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class IntroTexts extends StatelessWidget {
  const IntroTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Its time for a',
              style: GoogleFonts.poppins(
                fontSize: 34,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Drink',
              style: GoogleFonts.yellowtail(
                fontSize: 50,
                textStyle: const TextStyle(
                  color: Color(0xFFFBB121),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'The one-stop to find amazing drink mixes for any occassion.',
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(height: 26),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF5D8A51),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 5,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () {
                context.go('/home');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Get Started >>',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
