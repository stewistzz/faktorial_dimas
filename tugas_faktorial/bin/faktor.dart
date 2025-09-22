// main.dart
import 'dart:io';

void main() {
  // menyimpan history perhitungan faktorial
  List<String> history = [];
  // hitungFaktorial(history);
  // riwayat(history);

  print('Hello, ini Program Faktorial Sederhana!\n');
  // melakukan input dari kalkulator BMI`
  print("Masukkan angka faktorial anda : ");
  // input user
  String? faktorial = stdin.readLineSync();
  int? nilaiFaktorial = int.tryParse(faktorial ?? '');

  // // masukkan data ke parameter untuk hitungBMI
  // if (nilaiFaktorial != null) {
  //   hitungFaktorial(nilaiFaktorial, riwayat);
  // } else {
  //   print(
  //     "Input tidak valid. Mohon masukkan angka yang benar untuk tinggi dan berat badan.",
  //   );
  // }
  // tampilkanRiwayat(riwayat);
}
