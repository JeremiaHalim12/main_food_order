import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/iconback/back_icon_pop.dart';
import 'package:main_food_order/presentation/widgets/payment/payment_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            width: 165,
            height: 30,
            child: const Image(
              image: AssetImage("lib/asset/payment.png"),
              fit: BoxFit.contain,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.only(left: 17, top: 5),
            child: BackIconPop(),
          ),
        ),
        body: const Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 51,
                  ),
                  PaymentCard(),
                ],
              ),
            )),
      ),
    );
  }
}
