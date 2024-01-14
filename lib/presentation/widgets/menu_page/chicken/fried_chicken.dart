import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class FriedChicken extends StatelessWidget {
  const FriedChicken({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/friedchicken.png',
      index: 4,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
