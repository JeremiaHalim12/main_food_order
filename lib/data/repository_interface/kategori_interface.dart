import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/domain/entities/kategori.dart';

abstract class IKategoriRepository {
  Future<List<Kategori>> getKategori([FirebaseFirestore? firestore]);
}