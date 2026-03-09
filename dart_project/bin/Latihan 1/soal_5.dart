import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka untuk mencari perseginya: ');
  String? inStr = stdin.readLineSync();
  
  if (inStr != null && inStr.isNotEmpty) {
    try {
      double angka = double.parse(inStr);
      double persegi = angka * angka;
      
      // Mengubah output menjadi int jika tidak ada desimal untuk menghindari ".0"
      if (angka == angka.toInt()) {
        print('Persegi dari ${angka.toInt()} adalah ${persegi.toInt()}');
      } else {
        print('Persegi dari $angka adalah $persegi');
      }
    } catch (e) {
      print('Input yang dimasukkan bukan angka yang valid.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
