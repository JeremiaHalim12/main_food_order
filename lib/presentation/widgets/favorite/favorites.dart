import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/favorite/custom_favorite.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beef/beef_rice_bowl.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beef/sirloin_steak.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beef/tenderloin_steak.dart';
import 'package:main_food_order/presentation/widgets/menu_page/chicken/fried_chicken.dart';
import 'package:main_food_order/presentation/widgets/menu_page/beverage/juice/orange_juice.dart';

class FavoritesRow extends StatelessWidget {
  const FavoritesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FriedChicken()));
          },
          child: const CustomFavorite(
            gambar: "lib/asset/friedchicken.png",
            index: 4,
          ),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TenderloinSteak()));
          },
          child: const CustomFavorite(
            gambar: "lib/asset/steak.png",
            index: 20,
          ),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BeefRiceBowl()));
          },
          child: const CustomFavorite(
            gambar: "lib/asset/beefricebowl.png",
            index: 6,
          ),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SirloinSteak()));
          },
          child: const CustomFavorite(
            gambar: "lib/asset/sirloin.png",
            index: 2,
          ),
        ),
        const SizedBox(
          width: 21,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OrangeJuice()));
          },
          child: const CustomFavorite(
            gambar: "lib/asset/juice.png",
            index: 15,
          ),
        ),
      ],
    );
  }
}
