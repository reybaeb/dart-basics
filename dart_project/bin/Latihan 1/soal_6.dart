import 'dart:io';

void main() {
  stdout.write('Masukkan nama depan Anda: ');
  String? namaDepan = stdin.readLineSync();

  stdout.write('Masukkan nama belakang Anda: ');
  String? namaBelakang = stdin.readLineSync();

  String namaLengkap = '${namaDepan ?? ''} ${namaBelakang ?? ''}'.trim();
  
  if (namaLengkap.isNotEmpty) {
    print('Nama lengkap Anda adalah: $namaLengkap');
  } else {
    print('Anda tidak memasukkan nama yang valid.');
  }
}
