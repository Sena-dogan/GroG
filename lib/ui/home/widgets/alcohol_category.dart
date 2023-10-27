import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlcoholCategory extends StatelessWidget {
  const AlcoholCategory({
    required this.image,
    required this.alcoholName,
    super.key,
  });

  final String image;
  final String alcoholName;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: 150,
        width: size.width * 0.25,
        child: Stack(
          children: <Widget>[
            Image.asset(
              image,
            ),
            Center(
              child: Container(
                width: size.width * 0.25,
                height: 22.82,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: const Color(0xFF464646),
                  ),
                ),
                child: Center(
                  child: Text(
                    alcoholName,
                    style: GoogleFonts.notoSerif(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
