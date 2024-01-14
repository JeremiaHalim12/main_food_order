import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_pop.dart';
import 'package:main_food_order/presentation/widgets/menuList/custom_menu.dart';
import 'package:main_food_order/presentation/widgets/menu_page/bakery/croissant.dart';
import 'package:main_food_order/presentation/widgets/menu_page/bakery/donat.dart';

class BakeryPage extends StatelessWidget {
  const BakeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bakery",
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
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Donat()));
                },
                child:
                    const CustomMenu(index: 8, gambar: "lib/asset/donut.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Croissant()));
                },
                child:
                    const CustomMenu(index: 17, gambar: "lib/asset/croissant.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
