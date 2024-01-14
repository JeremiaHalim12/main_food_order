import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class Fanta extends StatelessWidget {
  const Fanta({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/fanta.png',
      index: 3,
      position: 360,
      width: 300,
      height: 300,
    );
  }
}
