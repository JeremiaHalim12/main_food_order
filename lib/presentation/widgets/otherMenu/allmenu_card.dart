import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/pages/f&b/beef_page.dart';
import 'package:main_food_order/presentation/pages/f&b/chicken_page.dart';
import 'package:main_food_order/presentation/pages/f&b/coffee_page.dart';
import 'package:main_food_order/presentation/pages/f&b/dessert_page.dart';
import 'package:main_food_order/presentation/pages/f&b/juice_page.dart';
import 'package:main_food_order/presentation/pages/f&b/noodle_page.dart';
import 'package:main_food_order/presentation/pages/f&b/rice_page.dart';
import 'package:main_food_order/presentation/pages/f&b/softdrink_page.dart';
import 'package:main_food_order/presentation/pages/f&b/tea_page.dart';
import 'package:main_food_order/presentation/widgets/garis.dart';
import 'package:main_food_order/presentation/widgets/otherMenu/custom_allmenu.dart';

class AllMenuCard extends StatelessWidget {
  const AllMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 337,
          height: 719,
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
          width: 317,
          height: 699,
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
        const Positioned(
          left: 29,
          top: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAllMenuText(index: 7, page: RicePage(),),
              Garis(),
              CustomAllMenuText(index: 14, page: BeefPage(),),
              Garis(),
              CustomAllMenuText(index: 6, page: ChickenPage(),),
              Garis(),
              CustomAllMenuText(index: 12, page: NoodlePage(),),
              Garis(),
              CustomAllMenuText(index: 3, page: DessertPage(),),
              Garis(),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: CustomAllMenuText(index: 5, page: TeaPage(),),
              ),
              Garis(),
              CustomAllMenuText(index: 8, page: CoffeePage(),),
              Garis(),
              CustomAllMenuText(index: 11, page: JuicePage(),),
              Garis(),
              CustomAllMenuText(index: 0, page: SoftDrinkPage(),),
              Garis(),
            ],
          ),
        ),
      ],
    );
  }
}
