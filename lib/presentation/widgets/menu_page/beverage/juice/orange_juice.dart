import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class OrangeJuice extends StatelessWidget {
  const OrangeJuice({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/juice.png',
      index: 15,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
