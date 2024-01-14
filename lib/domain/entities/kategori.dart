class Kategori {
  final String namaKategori;

  Kategori({required this.namaKategori});

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        namaKategori: json['namaKategori'],
  );
  
  @override
  String toString() {
    return namaKategori;
  }
}