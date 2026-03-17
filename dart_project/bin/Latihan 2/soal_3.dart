import 'dart:io';

void main() {
  stdout.write('Masukkan angka untuk dihitung faktorialnya: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int? n = int.tryParse(input);

    if (n != null && n >= 0) {
      int factorial = 1;
      int i = n;
      while (i > 1) {
        factorial *= i;
        i--;
      }
      print('Faktorial dari $n adalah $factorial');
    } else {
      print('Input harus berupa bilangan bulat non-negatif.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
