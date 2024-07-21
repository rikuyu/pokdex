import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/gen/assets.gen.dart';

class AllItemWidget extends StatelessWidget {
  const AllItemWidget(this.index, this.imageUrl, {super.key});

  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: PokedexColor.black90Alpha),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text("#${index + 1}", style: const TextStyle(color: PokedexColor.black90Alpha)),
            Expanded(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder: (_, __) => Assets.monsterBall.svg(),
                errorWidget: (_, __, ___) => const Icon(Icons.error),
              ),
            ),
          ]),
        ));
  }
}
