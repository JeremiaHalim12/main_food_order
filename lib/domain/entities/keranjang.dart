class Keranjang {
  final String namaMenu;
  final int hargaMenu;
  final int jumlah;
  final int totalHarga;

  Keranjang({required this.namaMenu, required this.hargaMenu, required this.jumlah, required this.totalHarga});

  factory Keranjang.fromJson(Map<String, dynamic> json) => Keranjang(
        namaMenu: json['namaMenu'],
        hargaMenu: json['hargaMenu'],
        jumlah: json['jumlah'],
        totalHarga: json['totalHarga'],
  );
  
  String namaMakanan() {
    return namaMenu;
  }

  String stringHarga() {
    return '$hargaMenu';
  }

  String stringJumlah() {
    return '$jumlah';
  }

  String stringTotal() {
    return '$totalHarga';
  }

}