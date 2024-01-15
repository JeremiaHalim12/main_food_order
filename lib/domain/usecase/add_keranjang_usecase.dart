import 'package:main_food_order/data/repositories/keranjang_repository.dart';

class AddKeranjangUseCase {
  KeranjangRepository keranjangRepository;

  AddKeranjangUseCase({required this.keranjangRepository});

  static Future<void> execute(
      String namaMenu, int hargaMenu, int jumlah) async {
    int totalHargaAkhir = jumlah * hargaMenu;

    int? doc = await KeranjangRepository().getMaxDoc();
    int? lastDoc = doc + 1;
    String formatLastDoc = lastDoc.toString().padLeft(3, '0');

    KeranjangRepository().addDataToKeranjang(
        formatLastDoc, namaMenu, hargaMenu, jumlah, totalHargaAkhir);
  }
}