import 'dart:io';

void main() {
  int target = 7; // Angka target
  int? tebakan;

  print('Program Menebak Angka antara 1 dan 10');

  do {
    stdout.write('Tebak angka: ');
    String? input = stdin.readLineSync();
    tebakan = int.tryParse(input ?? '');

    if (tebakan == target) {
      print('Tebakan Anda benar!');
    } else {
      if (tebakan != null) {
        print('Tebakan salah, coba lagi.');
      } else {
        print('Masukkan angka yang valid.');
      }
    }
  } while (tebakan != target);
}
