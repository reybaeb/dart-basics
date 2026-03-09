import 'dart:io';

void main() {
  stdout.write('Masukkan string pertama: ');
  String? a = stdin.readLineSync();

  stdout.write('Masukkan string kedua: ');
  String? b = stdin.readLineSync();

  print('\nSebelum ditukar:');
  print('String Pertama = $a');
  print('String Kedua = $b');

  // Menukar menggunakan variabel sementara
  String? temp = a;
  a = b;
  b = temp;

  print('\nSetelah ditukar:');
  print('String Pertama = $a');
  print('String Kedua = $b');
}
