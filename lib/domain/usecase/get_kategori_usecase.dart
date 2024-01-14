import 'package:main_food_order/data/repositories/kategori_repository.dart';
import 'package:main_food_order/domain/entities/kategori.dart';

class GetKategoriUseCase {
  KategoriRepository kategoriRepository;

  GetKategoriUseCase({required this.kategoriRepository});

  static Future<List<Kategori>> execute() async {
    return await KategoriRepository().getKategori();
  }
}