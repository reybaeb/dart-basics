import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah kalimat atau frasa (String): ');
  String? inputStr = stdin.readLineSync();

  if (inputStr != null) {
    // Menghapus semua spasi dalam String
    String tanpaSpasi = inputStr.replaceAll(' ', '');
    print('String setelah spasi dihapus menjadi: "$tanpaSpasi"');
  } else {
    print('Input kosong.');
  }
}
