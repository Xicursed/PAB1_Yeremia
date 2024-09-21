import 'package:pab_1/pab_1.dart' as pab_1;

class Produk{
 String namaProduk;
 double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);
  double hitungTotalHargaTanpaDiskon() {
  return harga*jumlah;
  }
  double hitungTotalHargaSetelahDiskon(){
  double totalHargaTanpaDiskon=hitungTotalHargaTanpaDiskon();
  double totalHargaDenganDiskon=totalHargaTanpaDiskon * (diskon/100);
  return  totalHargaTanpaDiskon-totalHargaDenganDiskon;
  }

  void tampilkanInformasiProduk(){
    print("Info Produk Yang Di Tersedia");
    print('Nama   : $namaProduk');
    print('Harga  : Rp.$harga');
    print('Jumlah : $jumlah');
    print('Diskon : $diskon%');
    print('----------------------------------------------------------------');
    print('Harga Tanpa Diskon : ${hitungTotalHargaTanpaDiskon()}');
    print('Harga setelah Diskon : ${hitungTotalHargaSetelahDiskon()}');
    print('-----------------------------------------------------------------');
}
}

void main(){
  var produk=Produk('Kamera', 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}
