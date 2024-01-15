import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalPriceCard extends StatelessWidget {
  const TotalPriceCard({
    super.key,
    required this.widthKuning,
    required this.heightKuning,
    required this.widthPutih,
    required this.heightPutih,
  });
  final double widthKuning;
  final double heightKuning;
  final double widthPutih;
  final double heightPutih;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: widthKuning,
          height: heightKuning,
          decoration: BoxDecoration(
            color: const Color(0xFFFFD65C),
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: Color(0x99000000),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Container(
          width: widthPutih,
          height: heightPutih,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: Color(0x99000000),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Positioned(
          top: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Item Total",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Rp 0",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "Tax & Service (10%)",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    "Rp 0",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 63,
              ),
              Row(
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Rp 0",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
