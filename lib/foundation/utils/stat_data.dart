import 'package:flutter/material.dart';

enum StatData {
  hp("HP", Color(0xff00c72b)),
  attack("こうげき", Color(0xfffc0000)),
  speed("すばやさ", Color(0xff00f0fc)),
  defense("ぼうぎょ", Color(0xff0093fc)),
  specialAttack("とくこう", Color(0xfff649fc)),
  specialDefense("とくぼう", Color(0xfffc9a49));

  final String nameJa;
  final Color color;

  const StatData(this.nameJa, this.color);
}

StatData? getStatData(String nameEn) {
  StatData? data;
  for (var value in StatData.values) {
    if (nameEn.replaceFirst("-", "") == value.name.toLowerCase()) data = value;
  }
  return data;
}
