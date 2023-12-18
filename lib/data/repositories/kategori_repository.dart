import 'package:main_food_order/data/repository_interface/kategori_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KategoriRepository implements IKategoriRepository {
  CollectionReference kategori = FirebaseFirestore.instance.collection('kategori');

  @override
  Future<List<dynamic>> getKategori() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('kategori').get();

    List<dynamic> dataList = [];
    for (QueryDocumentSnapshot<Map<String, dynamic>> document in snapshot.docs) {
      dataList.add(document.data());
    }

    return dataList;
  }
}