import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:main_food_order/data/repository_interface/keranjang_interface.dart';
import 'package:main_food_order/domain/entities/keranjang.dart';

class KeranjangRepository implements IKeranjangRepository {
  @override
  Future<List<Keranjang>> getKeranjang([FirebaseFirestore? firestore]) async {
    firestore ??= FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> snapshot =
        await firestore.collection('keranjang').get();

    List<dynamic> dataList = [];
    for (QueryDocumentSnapshot<Map<String, dynamic>> document
        in snapshot.docs) {
      dataList.add(document.data());
    }

    return dataList.map((e) => Keranjang.fromJson(e)).toList();
  }

  @override
  Future<void> addDataToKeranjang(
      String doc, String namaMenu, int hargaMenu, int jumlah, int totalHarga,
      [FirebaseFirestore? firestore]) async {
    firestore ??= FirebaseFirestore.instance;
    await firestore.collection('keranjang').doc(doc).set({
      'namaMenu': namaMenu,
      'hargaMenu': hargaMenu,
      'jumlah': jumlah,
      'totalHarga': totalHarga,
      'doc': doc
    });
  }

  Future<int> getMaxDoc([FirebaseFirestore? firestore]) async {
    firestore ??= FirebaseFirestore.instance;
    
    CollectionReference keranjang = firestore.collection('keranjang');
    List<String> documentReferences = [];

    await keranjang.get().then((QuerySnapshot querySnapshot) {
      for (var document in querySnapshot.docs) {
        DocumentReference documentReference = document.reference;
        documentReferences.add(documentReference.path.replaceAll('keranjang/', ''));
      }
    });

    List<String> strings = documentReferences;
    if (strings.isEmpty) {
      return 0;
    }

    List<int> numbers = strings.map((str) => int.parse(str)).toList();
    numbers.sort();
    int max = numbers.last;
    return max;
  }
}
