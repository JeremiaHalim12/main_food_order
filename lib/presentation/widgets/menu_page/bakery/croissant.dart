import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class Croissant extends StatelessWidget {
  const Croissant({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/croissant.png',
      index: 17,
      position: 300,
      width: 320,
      height: 320,
    );
  }
}
