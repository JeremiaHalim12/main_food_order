import 'package:flutter/material.dart';

class JudulFav extends StatelessWidget {
  const JudulFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 129,
      height: 29,
      // padding: const EdgeInsets.all(3),
      child: const Image(
        image: AssetImage("lib/asset/Favorites.png"),
        fit: BoxFit.contain,
      ),
    );
  }
}
