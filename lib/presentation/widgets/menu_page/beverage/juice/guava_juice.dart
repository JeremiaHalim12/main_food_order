import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class GuavaJuice extends StatelessWidget {
  const GuavaJuice({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/jambu.png',
      index: 0,
      position: 380,
      width: 220,
      height: 220,
    );
  }
}
