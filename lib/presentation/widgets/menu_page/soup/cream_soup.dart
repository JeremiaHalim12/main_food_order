import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class CreamSoup extends StatelessWidget {
  const CreamSoup({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/creamsoup.png',
      index: 11,
      position: 380,
      width: 320,
      height: 320,
    );
  }
}
