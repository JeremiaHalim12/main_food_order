import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class TenderloinSteak extends StatelessWidget {
  const TenderloinSteak({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/steak.png',
      index: 20,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
