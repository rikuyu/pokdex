import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';

Widget heightWeightSection(
  String heightLabel,
  String heightValue,
  String weightLabel,
  String weightValue,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _heightWeightBox(heightLabel, heightValue),
      const SizedBox(width: 16),
      _heightWeightBox(weightLabel, weightValue),
    ],
  );
}

Widget _heightWeightBox(String label, String value) {
  const labelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  const valueStyle = TextStyle(fontSize: 16);
  return Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
      color: PokedexColor.black5Alpha,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(label, style: labelStyle), const SizedBox(height: 8), Text(value, style: valueStyle)],
      ),
    ),
  );
}
