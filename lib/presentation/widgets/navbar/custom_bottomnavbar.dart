import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/pages/cart_page.dart';
import 'package:main_food_order/presentation/pages/main_page.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 52,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 20,
                  offset: Offset(0, -3),
                  spreadRadius: 0),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              icon: const Icon(
                Icons.food_bank_rounded,
                color: Color(0xFFFF6B00),
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xFFFF6B00),
                size: 32,
              ),
            ),
          ],
        )
      ],
    );
  }
}
