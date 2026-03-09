import 'dart:io';

void main() {
  stdout.write('Masukkan total jumlah tagihan di restoran: Rp');
  double totalTagihan = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  stdout.write('Masukkan jumlah orang: ');
  int jumlahOrang = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  if (jumlahOrang > 0) {
    // Menghitung jumlah yang harus dibayar per orang
    double tagihanPerOrang = totalTagihan / jumlahOrang;
    
    // toStringAsFixed() bisa digunakan untuk membulatkan nominal dalam format yang rapi
    print('\nTagihan restoran yang harus dibayar masing-masing adalah: Rp${tagihanPerOrang.toStringAsFixed(2)}');
  } else {
    print('Jumlah orang minimal adalah 1 orang.');
  }
}
