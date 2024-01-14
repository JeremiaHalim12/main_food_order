import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_food_order/domain/usecase/get_kategori_usecase.dart';

class CustomAllMenuText extends StatelessWidget {
  final int index;
  final Widget page;
  const CustomAllMenuText({super.key, required this.index, required this.page});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FutureBuilder(
            future: GetKategoriUseCase.execute(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data![index].toString(),
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Text('No Data');
              }
            },
          ),
          const SizedBox(width: 200)
        ],
      ),
    );
  }
}
