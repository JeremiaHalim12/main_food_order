import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class BeefRiceBowl extends StatelessWidget {
  const BeefRiceBowl({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/beefricebowl.png',
      index: 6,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
