void main() {
  List<String> daftarKata = [
    'Flutter',
    'Dart',
    'Programming',
    'Mobile',
    'University'
  ];

  print('Daftar Kata dan Panjangnya:');
  print('---------------------------');

  for (var kata in daftarKata) {
    print('Kata: "$kata" - Panjang: ${kata.length} karakter');
  }
}
