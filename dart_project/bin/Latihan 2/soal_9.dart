import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int target = random.nextInt(100) + 1;
  int? tebakan;

  print('=== Permainan Tebak Angka 1-100 ===');

  do {
    stdout.write('Masukkan tebakan Anda: ');
    String? input = stdin.readLineSync();
    tebakan = int.tryParse(input ?? '');

    if (tebakan != null) {
      if (tebakan < target) {
        print('Terlalu rendah! Coba lagi.');
      } else if (tebakan > target) {
        print('Terlalu tinggi! Coba lagi.');
      } else {
        print('Selamat! Tebakan Anda $tebakan BENAR.');
      }
    } else {
      print('Masukkan angka yang valid antara 1-100.');
    }
  } while (tebakan != target);
}
