import 'package:main_food_order/data/repository_interface/kategori_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/domain/entities/kategori.dart';

class KategoriRepository implements IKategoriRepository {
  @override
  Future<List<Kategori>> getKategori([FirebaseFirestore? firestore]) async {
    firestore ??= FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> snapshot = await firestore.collection('kategori').get();

    List<dynamic> dataList = [];
    for (QueryDocumentSnapshot<Map<String, dynamic>> document in snapshot.docs) {
      dataList.add(document.data());
    }

    return dataList.map((e) => Kategori.fromJson(e)).toList();
  }
}