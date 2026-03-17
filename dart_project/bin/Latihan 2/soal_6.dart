import 'dart:io';

void main() {
  stdout.write('Masukkan tahun: ');
  String? input = stdin.readLineSync();
  int? tahun = int.tryParse(input ?? '');

  if (tahun != null) {
    if ((tahun % 4 == 0 && tahun % 100 != 0) || (tahun % 400 == 0)) {
      print('$tahun adalah tahun kabisat.');
    } else {
      print('$tahun bukan tahun kabisat.');
    }
  } else {
    print('Masukkan format tahun yang valid.');
  }
}
