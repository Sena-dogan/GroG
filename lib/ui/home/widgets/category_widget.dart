import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.boxHeight,
    required this.boxWidth,
    required this.categoryName,
    required this.textSize,
    required this.icon,
    required this.image,
    super.key,
  });

  final double boxHeight;
  final double boxWidth;
  final String categoryName;
  final double textSize;
  final Image icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: boxHeight,
      width: size.width * boxWidth,
      child: Stack(
        children: <Widget>[
          Image.asset(
            image,
            opacity: const AlwaysStoppedAnimation<double>(0.7),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon,
                Text(
                  categoryName,
                  style: GoogleFonts.acme(
                    color: Colors.white,
                    fontSize: textSize,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
