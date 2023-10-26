import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.76,
      height: 35,
      decoration: BoxDecoration(
          color: GrogColors.SearchBarColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(0.15))),
      child: Row(
        children: <Widget>[
          const Gap(10),
          const Icon(
            CupertinoIcons.search,
            color: Colors.white,
            size: 18,
          ),
          const Gap(9.14),
          Text(
            'Search',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
