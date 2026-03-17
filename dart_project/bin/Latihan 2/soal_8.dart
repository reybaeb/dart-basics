import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  String? input = stdin.readLineSync();
  int? n = int.tryParse(input ?? '');

  if (n != null) {
    int sum = 0;
    int temp = n.abs();
    while (temp > 0) {
      sum += temp % 10;
      temp ~/= 10;
    }
    print('Jumlah digit dari $n adalah $sum');
  } else {
    print('Input harus berupa bilangan bulat.');
  }
}
