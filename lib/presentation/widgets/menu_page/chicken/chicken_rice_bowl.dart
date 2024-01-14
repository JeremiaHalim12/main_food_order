import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class ChickenRiceBowl extends StatelessWidget {
  const ChickenRiceBowl({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/chickenricebowl.png',
      index: 19,
      position: 370,
      width: 320,
      height: 320,
    );
  }
}
