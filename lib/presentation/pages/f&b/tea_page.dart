import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_pop.dart';
import 'package:main_food_order/presentation/widgets/menuList/custom_menu.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/softdrink/frestea.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/tea/tehmanis.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/tea/tehtawar.dart';

class TeaPage extends StatelessWidget {
  const TeaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Tea",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Frestea()));
                },
                child:
                    const CustomMenu(index: 13, gambar: "lib/asset/frestea.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
