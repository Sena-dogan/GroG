import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.notoSerifDisplay(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
