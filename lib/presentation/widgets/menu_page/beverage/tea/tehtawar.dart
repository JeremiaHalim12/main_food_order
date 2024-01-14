import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class TehTawar extends StatelessWidget {
  const TehTawar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/tehtawar.png',
      index: 10,
      position: 340,
      width: 290,
      height: 290,
    );
  }
}
