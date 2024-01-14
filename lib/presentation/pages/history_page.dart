import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/presentation/pages/main_page.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_push.dart';
import 'package:main_food_order/presentation/widgets/navbar/custom_bottomnavbar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "History",
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
            child: BackIconPush(page: MainPage()),
          ),
        ),
        body: Center(
          child: ListView(
            children: const [
              Text("Order 1"),
              Text("Order 2"),
            ],
          ),
        ),
        bottomNavigationBar: const CustomNavbar(),
      ),
    );
  }
}
