import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/gen/assets.gen.dart';

Widget pokedexUnitImage(String imageUrl, {double? width = 48, double? height = 48}) {
  return CachedNetworkImage(
    width: width,
    height: height,
    imageUrl: imageUrl,
    placeholder: (_, __) => Assets.monsterBall.svg(),
    errorWidget: (_, __, ___) => const Icon(
      Icons.error,
      color: PokedexColor.primaryContainer,
    ),
  );
}
