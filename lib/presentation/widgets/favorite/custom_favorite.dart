import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/domain/usecase/get_makanan_usecase.dart';

class CustomFavorite extends StatelessWidget {
  final String gambar;
  final int index;
  const CustomFavorite(
      {super.key,
      required this.gambar, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 212,
          height: 282,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 165, 100),
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(178, 255, 165, 100),
                blurRadius: 6,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: AssetImage(gambar),
                  fit: BoxFit.contain,
                  width: 175,
                  height: 175,
                ),
                const SizedBox(
                  height: 30,
                ),
                FutureBuilder(
                        future: GetMakananUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![index].namaMakanan(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return const Text('No Data');
                          }
                        },
                      ),
                const SizedBox(
                  height: 5,
                ),
                FutureBuilder(
                        future: GetMakananUseCase.execute(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              snapshot.data![index].toString(),
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
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
            )),
      ],
    );
  }
}
