import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 152,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFFFD65C),
          ),
        ),
        Container(
          width: 97,
          height: 26,
          child: const Image(
            image: AssetImage("lib/asset/payment.png"),
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
