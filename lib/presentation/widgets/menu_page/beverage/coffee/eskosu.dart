import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/menu_page/template_menu.dart';

class EsKoSu extends StatelessWidget {
  const EsKoSu({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplateMenu(
      gambar: 'lib/asset/eskosu.png',
      index: 18,
      position: 350,
      width: 300,
      height: 300,
    );
  }
}
