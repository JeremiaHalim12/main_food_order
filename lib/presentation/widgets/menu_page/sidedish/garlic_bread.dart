import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class GarlicBread extends StatelessWidget {
  const GarlicBread({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/garlicbread.png',
      index: 14,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
