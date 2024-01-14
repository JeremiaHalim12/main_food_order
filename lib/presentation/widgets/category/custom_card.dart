import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String gambar;
  final double paddingLeft;
  final double paddingTop;
  const CustomCard({super.key, required this.gambar, required this.paddingLeft, required this.paddingTop});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Container(
          width: 59,
          height: 59,
          decoration: BoxDecoration(
            color: const Color(0xFFFFD65C),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(200, 255, 214, 92),
                // color: Color.fromARGB(255, 233, 233, 233),
                blurRadius: 7,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
          child: Image(
            image: AssetImage(gambar),
            fit: BoxFit.contain,
            width: 52,
            height: 52,
          ),
        ),
      ],
    );
  }
}
