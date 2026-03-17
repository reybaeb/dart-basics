import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    double? angka = double.tryParse(input);

    if (angka != null) {
      switch (angka) {
        case > 0:
          print('Angka tersebut adalah Positif.');
        case < 0:
          print('Angka tersebut adalah Negatif.');
        default:
          print('Angka tersebut adalah Nol.');
      }
    } else {
      print('Input harus berupa angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
