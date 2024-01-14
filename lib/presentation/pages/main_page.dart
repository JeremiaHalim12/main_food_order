import 'package:flutter/material.dart';
import 'package:main_food_order/presentation/widgets/category/category_column.dart';
import 'package:main_food_order/presentation/widgets/custom_judul.dart';
import 'package:main_food_order/presentation/widgets/drawer.dart';
import 'package:main_food_order/presentation/widgets/favorite/custom_judulfav.dart';
import 'package:main_food_order/presentation/widgets/favorite/favorites.dart';
import 'package:main_food_order/presentation/widgets/navbar/custom_bottomnavbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Icon(
                        Icons.menu_rounded,
                        size: 40,
                      ),
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  );
                },
              ),
              expandedHeight: 165,
              floating: false,
              pinned: true,
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Judul(
                        width: 166,
                        height: 58,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.only(
                        bottom: 20, left: 17, right: 17, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Category
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: CategoryColumn(),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        // Favorite
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: JudulFav(),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: FavoritesRow(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        bottomNavigationBar: const CustomNavbar(),
      ),
    );
  }
}
