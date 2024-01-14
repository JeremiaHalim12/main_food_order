import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class SaladBuah extends StatelessWidget {
  const SaladBuah({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/salad.png',
      index: 7,
      position: 285,
      width: 400,
      height: 400,
    );
  }
}
