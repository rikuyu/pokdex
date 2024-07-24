import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/type_data.dart';

Widget typesSection(List<TypeData> types) {
  return Wrap(
    spacing: 24.0,
    alignment: WrapAlignment.center,
    children: types
        .map(
          (type) => Chip(
            label: SizedBox(
              width: 100,
              child: Center(
                child: Text(
                  type.nameJa,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: type.color.computeLuminance() > 0.5
                          ? PokedexColor.black90Alpha
                          : PokedexColor.onPrimaryContainer),
                ),
              ),
            ),
            backgroundColor: type.color,
            shape: const StadiumBorder(side: BorderSide(style: BorderStyle.none)),
          ),
        )
        .toList(),
  );
}
