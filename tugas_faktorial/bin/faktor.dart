// main.dart
import 'dart:io';

void main() {
  // menyimpan history perhitungan faktorial
  List<String> riwayat = [];

  print('Hello, ini Program Faktorial Sederhana!\n');

  while (true) {
    stdout.write(
      'Masukkan angka untuk menghitung faktorial (atau ketik "exit" untuk keluar): ',
    );
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'exit') {
      print('Terima kasih telah menggunakan program ini. Sampai jumpa!');
      break;
    }

    int? n = int.tryParse(input);
    if (n == null || n < 0) {
      print('Input tidak valid. Silakan masukkan angka non-negatif.\n');
      continue;
    }

    hitungFaktorial(n, riwayat);
    print('');
  }

  tampilkanRiwayat(riwayat);
}

void hitungFaktorial(int n, List<String> riwayat) {
  int hasil = 1;
  String langkahLangkah = '';

  for (int i = n; i > 0; i--) {
    hasil *= i;
    langkahLangkah += (i == 1) ? '$i' : '$i x ';
  }

  String hasilPerhitungan =
      'Faktorial dari $n adalah $hasil\n'
      'Langkah perhitungannya: $langkahLangkah = $hasil';

  print(hasilPerhitungan);
  riwayat.add(hasilPerhitungan);
}

void tampilkanRiwayat(List<String> riwayat) {
  if (riwayat.isNotEmpty) {
    print('\nRiwayat Perhitungan Faktorial:');
    for (var entry in riwayat) {
      print(entry);
    }
  } else {
    print('Tidak ada riwayat perhitungan.');
  }
}
