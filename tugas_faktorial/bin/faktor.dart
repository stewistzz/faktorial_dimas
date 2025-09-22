// main.dart
import 'dart:io';

void main() {
  // menyimpan history perhitungan faktorial
  List<String> riwayat = [];

  print('Hello, ini Program Faktorial Sederhana!\n');

  // melakukan input angka faktorial
  print("Masukkan angka faktorial anda : ");
  // input user
  String? faktorial = stdin.readLineSync();
  int? nilaiFaktorial = int.tryParse(faktorial ?? '');

  // input validation
  if (nilaiFaktorial != null) {
    hitungFaktorial(nilaiFaktorial, riwayat);
  } else {
    print(
      "Input tidak valid. Mohon masukkan angka yang benar untuk tinggi dan berat badan.",
    );
  }

  tampilkanRiwayat(riwayat);
}

void hitungFaktorial(int n, List<String> riwayat) {
  
}

void tampilkanRiwayat(List<String> riwayat) {
  
}
