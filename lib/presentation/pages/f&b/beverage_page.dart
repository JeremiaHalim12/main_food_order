import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_pop.dart';
import 'package:main_food_order/presentation/widgets/menuList/custom_menu.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/coffee/americano.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/coffee/eskosu.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/juice/guava_juice.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/juice/orange_juice.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/softdrink/fanta.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/softdrink/frestea.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/tea/tehmanis.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/tea/tehtawar.dart';

class BeveragePage extends StatelessWidget {
  const BeveragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Beverage",
            style: GoogleFonts.leagueSpartan(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.only(left: 17, top: 5),
            child: BackIconPop(),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GuavaJuice()));
                  },
                  child:
                      const CustomMenu(index: 0, gambar: "lib/asset/jambu.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Americano()));
                  },
                  child:
                      const CustomMenu(index: 1, gambar: "lib/asset/americano.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Fanta()));
                  },
                  child:
                      const CustomMenu(index: 3, gambar: "lib/asset/fanta.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TehManis()));
                  },
                  child:
                      const CustomMenu(index: 5, gambar: "lib/asset/tehmanis.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TehTawar()));
                  },
                  child:
                      const CustomMenu(index: 10, gambar: "lib/asset/tehtawar.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Frestea()));
                  },
                  child:
                      const CustomMenu(index: 13, gambar: "lib/asset/frestea.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrangeJuice()));
                  },
                  child:
                      const CustomMenu(index: 15, gambar: "lib/asset/juice.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EsKoSu()));
                  },
                  child:
                      const CustomMenu(index: 18, gambar: "lib/asset/eskosu.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
