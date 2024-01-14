import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class Donat extends StatelessWidget {
  const Donat({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/donut.png',
      index: 8,
      position: 330,
      width: 320,
      height: 320,
    );
  }
}
