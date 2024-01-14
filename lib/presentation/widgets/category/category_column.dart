import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/domain/usecase/get_kategori_usecase.dart';
import 'package:main_food_order/presentation/pages/f&b/all_menu_page.dart';
import 'package:main_food_order/presentation/pages/f&b/bakery_page.dart';
import 'package:main_food_order/presentation/pages/f&b/beverage_page.dart';
import 'package:main_food_order/presentation/pages/f&b/chicken_page.dart';
import 'package:main_food_order/presentation/pages/f&b/noodle_page.dart';
import 'package:main_food_order/presentation/pages/f&b/rice_page.dart';
import 'package:main_food_order/presentation/pages/f&b/sidedish_page.dart';
import 'package:main_food_order/presentation/pages/f&b/soup_page.dart';
import 'package:main_food_order/presentation/widgets/category/custom_card.dart';

class CategoryColumn extends StatelessWidget {
  const CategoryColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Category baris 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RicePage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/rice.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![7].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NoodlePage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/noodle.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![12].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SoupPage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/soup.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![1].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChickenPage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/chicken.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![6].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 39,
        ),

        // Category baris 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BakeryPage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/bakery.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![10].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SideDishPage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/sidedish.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![4].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BeveragePage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/beverages.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![13].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllMenuPage(),
                        ));
                  },
                  child: Column(
                    children: [
                      const CustomCard(
                        gambar: "lib/asset/other.png",
                        paddingLeft: 4,
                        paddingTop: 4,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      FutureBuilder(
                        future: GetKategoriUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![2].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
