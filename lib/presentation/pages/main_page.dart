import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:main_food_order/data/repositories/kategori_repository.dart';
import 'package:main_food_order/domain/usecase/get_kategori_usecase.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text('data')
          ),
        ),
      ),
    );
  }
}
