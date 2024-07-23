import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/router/pokedex_rounter.gr.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:pokedex/gen/assets.gen.dart';

class AllPokemonItem extends StatelessWidget {
  const AllPokemonItem(this.p, {super.key});

  final Pokemon p;

  @override
  Widget build(BuildContext context) {
    int id = extractIdFromUrl(p.url);
    String image = Constants.getPokemonImage(id);

    return InkWell(
      onTap: () {
        context.router.push(PokemonDetailRoute(id: id, name: getPokemonNameJa(id)));
      },
      child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
              colors: [PokedexColor.primaryContainer, PokedexColor.onPrimaryContainer],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: PokedexColor.black90Alpha),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("#$id",
                    style: const TextStyle(
                      color: PokedexColor.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    )),
                Expanded(
                    child: CachedNetworkImage(
                  imageUrl: image,
                  placeholder: (_, __) => Assets.monsterBall.svg(),
                  errorWidget: (_, __, ___) => const Icon(Icons.error),
                )),
                Text(getPokemonNameJa(id),
                    style: const TextStyle(
                      color: PokedexColor.black90Alpha,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          )),
    );
  }
}
