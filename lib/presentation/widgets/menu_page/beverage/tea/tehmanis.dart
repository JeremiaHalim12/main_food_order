import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class TehManis extends StatelessWidget {
  const TehManis({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/tehmanis.png',
      index: 5,
      position: 335,
      width: 320,
      height: 320,
    );
  }
}
