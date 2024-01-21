import 'dart:convert';
import 'dart:io';

import 'package:sandbox_tugas_1/lib_calculate.dart';

void main() {
  Map<String, String> userChoice = {
    "1": "tambah",
    "2": "kurang",
    "3": "kali",
    "4": "bagi",
    "5": "modulus",
  };
  print('## === Calculator CLI === ##');
  print('1. Penjumlahan');
  print('2. Pengurangan');
  print('3. Perkalian');
  print('4. Pembagian');
  print('5. Modulus');
  print('');
  print('Input pilihan operasi:');
  String operationId = "";
  while (operationId.isEmpty) {
    var operasi = stdin.readLineSync();
    if (userChoice.containsKey(operasi)) {
      operationId = userChoice[operasi]!;
    } else {
      print('pilihan tidak valid');
    }
  }
  double angkaPertama = 0;
  double angkaKedua = 0;
  bool butuhPertama = true;
  bool butuhKedua = true;
  while (butuhPertama) {
    print('Angka pertama:');
    var pertama = stdin.readLineSync();
    try {
      angkaPertama = double.parse(pertama!);
      butuhPertama = false;
    } catch (e) {
      print('Input tidak valid');
    }
  }
  while (butuhKedua) {
    print('Angka kedua:');
    var kedua = stdin.readLineSync();
    try {
      angkaKedua = double.parse(kedua!);
      butuhKedua = false;
    } catch (e) {
      print('Input tidak valid');
    }
  }
  final result = calculate(operationId, angkaPertama, angkaKedua);
  print("Hasil $result");
  // print(line?.trim() == '2' ? 'Yup!' : 'Nope :(');
}
