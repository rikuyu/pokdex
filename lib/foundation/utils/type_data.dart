import 'package:flutter/material.dart';

enum TypeData {
  normal("ノーマル", Color(0xff949897)),
  fighting("かくとう", Color(0xfffa4439)),
  flying("ひこう", Color(0xff97b0e7)),
  poison("どく", Color(0xffa040a0)),
  ground("じめん", Color(0xffe0c068)),
  rock("いわ", Color(0xffb8a038)),
  bug("むし", Color(0xffa8b820)),
  ghost("ゴースト", Color(0xff705898)),
  steel("はがね", Color(0xff4d989e)),
  fire("ほのお", Color(0xfff08030)),
  water("みず", Color(0xff47bafc)),
  grass("くさ", Color(0xff78c850)),
  electric("でんき", Color(0xfff8d030)),
  psychic("エスパー", Color(0xfff85888)),
  ice("こおり", Color(0xff9ef0f0)),
  dragon("ドラゴン", Color(0xff066fb5)),
  dark("あく", Color(0xff705848)),
  fairy("フェアリー", Color(0xffee99ac)),
  stellar("ステラ", Color(0xff7cc7b2)),
  unknown("不明", Color(0xffffffff));

  final String nameJa;
  final Color color;

  const TypeData(this.nameJa, this.color);
}

TypeData getTypeData(String typeEn) {
  TypeData type = TypeData.unknown;
  for (var value in TypeData.values) {
    if (typeEn == value.name) type = value;
  }
  return type;
}
