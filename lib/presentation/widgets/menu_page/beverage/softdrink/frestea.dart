import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class Frestea extends StatelessWidget {
  const Frestea({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/frestea.png',
      index: 13,
      position: 350,
      width: 300,
      height: 300,
    );
  }
}
