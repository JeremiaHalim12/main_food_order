class Makanan {
  final String namaMenu;
  final int hargaMenu;
  final String desc;

  Makanan({required this.namaMenu, required this.hargaMenu, required this.desc});

  factory Makanan.fromJson(Map<String, dynamic> json) => Makanan(
        namaMenu: json['namaMenu'],
        hargaMenu: json['hargaMenu'],
        desc: json['desc'],
  );

  String namaMakanan() {
    return namaMenu;
  }

  @override
  String toString() {
    return 'Rp $hargaMenu';
  }

  int hargaMakanan() {
    return hargaMenu;
  }

  String deskripsi() {
    return desc;
  }
}