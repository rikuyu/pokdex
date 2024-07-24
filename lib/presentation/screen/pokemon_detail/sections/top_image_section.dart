import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:pokedex/foundation/utils/type_data.dart';
import 'package:pokedex/gen/assets.gen.dart';

Widget topImageSection(double height, int id, List<TypeData> types) {
  const radius = Radius.circular(30.0);
  final colors = types.map((t) => t.color).toList();

  return Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      gradient: colors.length > 1
          ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            )
          : null,
      color: colors.length == 1 ? colors.first : null,
      borderRadius: const BorderRadius.only(
        bottomLeft: radius,
        bottomRight: radius,
      ),
    ),
    child: Center(
        child: CachedNetworkImage(
      imageUrl: Constants.getPokemonImage(id),
      placeholder: (_, __) => Assets.monsterBall.svg(),
      errorWidget: (_, __, ___) => const Icon(Icons.question_mark),
    )),
  );
}
