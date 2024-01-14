import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/presentation/widgets/garis.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 329,
          height: 357,
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
          width: 309,
          height: 340,
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
          top: 38,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.money,
                    size: 60,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Cash",
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Garis(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.credit_card_rounded,
                    size: 60,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Debit Card",
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Garis(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.qr_code,
                    size: 60,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    "QRIS",
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 24, fontWeight: FontWeight.w600),
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
