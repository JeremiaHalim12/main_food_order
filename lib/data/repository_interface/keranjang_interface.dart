import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/domain/entities/keranjang.dart';

abstract class IKeranjangRepository {
  Future<List<Keranjang>> getKeranjang([FirebaseFirestore? firestore]);

  Future<void> addDataToKeranjang(String doc, String namaMenu, int hargaMenu, int jumlah, int totalHarga, [FirebaseFirestore? firestore]);
}