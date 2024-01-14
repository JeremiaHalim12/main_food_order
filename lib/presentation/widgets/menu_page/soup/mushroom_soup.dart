import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class MushroomSoup extends StatelessWidget {
  const MushroomSoup({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/mushroomsoup.png',
      index: 12,
      position: 320,
      width: 320,
      height: 320,
    );
  }
}
