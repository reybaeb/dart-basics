import 'dart:io';

void main() {
  stdout.write('Masukkan nama hari (Senin-Minggu): ');
  String? hari = stdin.readLineSync()?.toLowerCase();

  if (hari != null && hari.isNotEmpty) {
    switch (hari) {
      case 'senin':
      case 'selasa':
      case 'rabu':
      case 'kamis':
      case 'jumat':
        print('${hari[0].toUpperCase()}${hari.substring(1)} adalah hari kerja.');
      case 'sabtu':
      case 'minggu':
        print('${hari[0].toUpperCase()}${hari.substring(1)} adalah akhir pekan.');
      default:
        print('Nama hari tidak valid. Gunakan nama hari dalam Bahasa Indonesia (Senin-Minggu).');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
