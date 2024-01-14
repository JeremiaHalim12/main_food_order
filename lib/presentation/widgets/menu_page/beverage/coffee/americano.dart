import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class Americano extends StatelessWidget {
  const Americano({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/americano.png',
      index: 1,
      position: 350,
      width: 300,
      height: 300,
    );
  }
}
