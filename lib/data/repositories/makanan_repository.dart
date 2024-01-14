import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/data/repository_interface/makanan_interface.dart';
import 'package:main_food_order/domain/entities/makanan.dart';

class MakananRepository implements IMakananRepository {
  @override
  Future<List<Makanan>> getMakanan([FirebaseFirestore? firestore]) async {
    firestore ??= FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> snapshot = await firestore.collection('makanan').get();

    List<dynamic> dataList = [];
    for (QueryDocumentSnapshot<Map<String, dynamic>> document in snapshot.docs) {
      dataList.add(document.data());
    }

    return dataList.map((e) => Makanan.fromJson(e)).toList();
  }
}