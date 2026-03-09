import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan pembilang (yang dibagi): ');
  int pembilang = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  stdout.write('Masukkan bilangan penyebut (pembagi): ');
  int penyebut = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (penyebut != 0) {
    int hasilBagi = pembilang ~/ penyebut; // Hasil bagi secara bulat (integer division)
    int sisaBagi = pembilang % penyebut;   // Sisa bagi (modulo)

    print('Hasil bagi: $hasilBagi');
    print('Sisa bagi: $sisaBagi');
  } else {
    print('Penyebut tidak boleh 0 karena angka tidak dapat dibagi dengan nol.');
  }
}
