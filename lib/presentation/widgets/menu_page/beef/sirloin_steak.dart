import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class SirloinSteak extends StatelessWidget {
  const SirloinSteak({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/sirloin.png',
      index: 2,
      position: 290,
      width: 320,
      height: 320,
    );
  }
}
