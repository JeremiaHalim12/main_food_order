import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/domain/usecase/get_makanan_usecase.dart';

class CustomMenu extends StatelessWidget {
  final String gambar;
  final int index;
  const CustomMenu(
      {super.key,
      required this.gambar,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            image: AssetImage(gambar),
            fit: BoxFit.contain,
            width: 70,
            height: 70,
          ),
          FutureBuilder(
            future: GetMakananUseCase.execute(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data![index].namaMakanan(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Text('No Data');
              }
            },
          ),
          const SizedBox(
            width: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder(
            future: GetMakananUseCase.execute(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data![index].toString(),
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Text('No Data');
              }
            },
          ),
            ],
          )
        ],
      ),
    );
  }
}
