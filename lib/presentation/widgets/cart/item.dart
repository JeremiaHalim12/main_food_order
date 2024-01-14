import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAmount extends StatelessWidget {
  const ItemAmount({super.key, required this.jarak});
  final double jarak;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: jarak,
        ),
        Text(
          "-",
          style: GoogleFonts.leagueSpartan(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Text(
          "1",
          style: GoogleFonts.leagueSpartan(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Text(
          "+",
          style: GoogleFonts.leagueSpartan(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
