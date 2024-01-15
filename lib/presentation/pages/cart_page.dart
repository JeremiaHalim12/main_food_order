import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/pages/main_page.dart';
import 'package:main_food_order/presentation/pages/payment_page.dart';
import 'package:main_food_order/presentation/widgets/cart/cart_card.dart';
import 'package:main_food_order/presentation/widgets/cart/total_price_card.dart';
import 'package:main_food_order/presentation/widgets/customButton/button.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_push.dart';
import 'package:main_food_order/presentation/widgets/navbar/custom_bottomnavbar.dart';

class CartPage extends StatefulWidget {
  final String menu;
  final int harga;
  final int item;
  const CartPage({super.key, this.menu = 'No Item', this.harga = 0, this.item = 0});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            width: 56,
            height: 26,
            child: const Image(
              image: AssetImage("lib/asset/cart.png"),
              fit: BoxFit.contain,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.only(left: 17, top: 5),
            child: BackIconPush(
              page: MainPage(),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 2,
              ),

              // ITEM
              const ItemCartCard(
                widthKuning: 329,
                heightKuning: 371,
                widthPutih: 309,
                heightPutih: 353,
              ),
              const SizedBox(
                height: 31,
              ),

              // TOTAL HARGA
              const TotalPriceCard(
                  widthKuning: 329,
                  heightKuning: 188,
                  widthPutih: 309,
                  heightPutih: 167),
              const SizedBox(
                height: 30,
              ),

              // BUTTON PAYMENT
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  );
                },
                child: const CustomButton(),
              ),
            ],
          )),
        ),
        bottomNavigationBar: const CustomNavbar(),
      ),
    );
  }
}
