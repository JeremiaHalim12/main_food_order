import 'package:main_food_order/data/repositories/makanan_repository.dart';
import 'package:main_food_order/domain/entities/makanan.dart';

class GetMakananUseCase {
  MakananRepository makananRepository;

  GetMakananUseCase({required this.makananRepository});

  static Future<List<Makanan>> execute() async {
    return await MakananRepository().getMakanan();
  }
}