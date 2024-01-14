import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/cart/cart_item.dart';
import 'package:main_food_order/presentation/widgets/cart/item.dart';
import 'package:main_food_order/presentation/widgets/garis.dart';

class ItemCartCard extends StatelessWidget {
  const ItemCartCard({
    super.key,
    required this.widthKuning,
    required this.heightKuning,
    required this.widthPutih,
    required this.heightPutih,
  });
  final double widthKuning;
  final double heightKuning;
  final double widthPutih;
  final double heightPutih;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: widthKuning,
          height: heightKuning,
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
          width: widthPutih,
          height: heightPutih,
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
          top: 37,
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage("lib/asset/steak.png"),
                        fit: BoxFit.contain,
                        width: 55,
                        height: 55,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: CartItem(
                            item: "Chicken Fried Rice", price: "Rp 25.000"),
                      ),
                      ItemAmount(
                        jarak: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Garis(),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage("lib/asset/juice.png"),
                        fit: BoxFit.contain,
                        width: 55,
                        height: 55,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child:
                            CartItem(item: "Guava Juice", price: "Rp 15.000"),
                      ),
                      ItemAmount(
                        jarak: 45,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Garis(),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage("lib/asset/friednoodle.png"),
                        fit: BoxFit.contain,
                        width: 55,
                        height: 55,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child:
                            CartItem(item: "Chicken Soup", price: "Rp 15.000"),
                      ),
                      ItemAmount(
                        jarak: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Garis(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
