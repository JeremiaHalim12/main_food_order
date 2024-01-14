import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/domain/entities/makanan.dart';

abstract class IMakananRepository {
  Future<List<Makanan>> getMakanan([FirebaseFirestore? firestore]);
}