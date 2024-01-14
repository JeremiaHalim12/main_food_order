import 'package:flutter/material.dart';

class Judul extends StatelessWidget {
  const Judul({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      // padding: const EdgeInsets.all(3),
      child: const Image(
        image: AssetImage("lib/asset/judul1.png"),
        fit: BoxFit.fill,
      ),
    );
  }
}
