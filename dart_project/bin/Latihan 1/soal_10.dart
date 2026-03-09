import 'dart:io';

void main() {
  stdout.write('Masukkan angka dalam bentuk String (teks): ');
  String? inputStr = stdin.readLineSync();

  // Memastikan input tidak null dan tidak kosong sebelum dikonversi
  if (inputStr != null && inputStr.trim().isNotEmpty) {
    // Mencoba konversi ke integer menggunakan int.tryParse() untuk mencegah error format
    int? hasilKonversi = int.tryParse(inputStr.trim());
    
    if (hasilKonversi != null) {
      print('Berhasil dikonversi!');
      print('Ini adalah variabel tipe int: $hasilKonversi (runtime type: ${hasilKonversi.runtimeType})');
    } else {
      print('Gagal mengonversi. "${inputStr}" bukanlah format bilangan bulat biasa yang valid.');
    }
  } else {
    print('Input tidak valid karena kosong.');
  }
}
