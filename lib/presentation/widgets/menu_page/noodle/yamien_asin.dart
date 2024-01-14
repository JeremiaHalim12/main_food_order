import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class YamienAsin extends StatelessWidget {
  const YamienAsin({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/yamienasin.png',
      index: 16,
      position: 350,
      width: 320,
      height: 320,
    );
  }
}
