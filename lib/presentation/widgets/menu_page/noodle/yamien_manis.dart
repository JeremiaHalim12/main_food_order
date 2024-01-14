import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class YamienManis extends StatelessWidget {
  const YamienManis({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/friednoodle.png',
      index: 9,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
