import 'package:flutter/material.dart';

class Garis extends StatelessWidget {
  const Garis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 2,
        ),
        Container(
          height: 2,
          width: 275,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
