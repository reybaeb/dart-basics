import 'dart:io';

void main() {
  stdout.write('Masukkan pokok pinjaman (p): ');
  double p = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Masukkan waktu dalam rentang tahun (t): ');
  double t = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Masukkan suku bunga (r) dalam persen: ');
  double r = double.parse(stdin.readLineSync() ?? '0');

  double bungaSederhana = (p * t * r) / 100;

  print('Bunga sederhana (Simple Interest) yang didapatkan adalah: $bungaSederhana');
}
