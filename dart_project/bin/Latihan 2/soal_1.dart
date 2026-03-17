import 'dart:io';

void main() {
  stdout.write('Masukkan usia Anda: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? usia = int.tryParse(input);

    if (usia != null) {
      if (usia >= 17) {
        print('Anda sudah memenuhi syarat untuk memilih.');
      } else {
        print('Anda belum memenuhi syarat untuk memilih.');
      }
    } else {
      print('Input harus berupa angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
