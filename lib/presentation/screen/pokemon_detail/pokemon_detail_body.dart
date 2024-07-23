import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/ability_data.dart';
import 'package:pokedex/foundation/utils/constants.dart';
import 'package:pokedex/foundation/utils/type_data.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PokemonDetailBody extends StatelessWidget {
  const PokemonDetailBody(this.detail, {super.key});

  final PokemonDetail detail;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final imageSectionHeight = screenHeight / 6;
    final types = detail.types.map((t) => getTypeData(t.data.name)).toList();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: imageSectionHeight,
            decoration: BoxDecoration(
              color: types.first.color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Center(
                child: CachedNetworkImage(
              imageUrl: Constants.getPokemonImage(detail.id),
              placeholder: (_, __) => Assets.monsterBall.svg(),
              errorWidget: (_, __, ___) => const Icon(Icons.question_mark),
            )),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 24.0,
            alignment: WrapAlignment.center,
            children: types
                .map(
                  (type) => Chip(
                    label: Text(
                      type.nameJa,
                      style: TextStyle(
                          color: type.color.computeLuminance() > 0.5
                              ? PokedexColor.black90Alpha
                              : PokedexColor.onPrimaryContainer),
                    ),
                    backgroundColor: type.color,
                    shape: const StadiumBorder(side: BorderSide(style: BorderStyle.none)),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text(l10n.heightLabel), const SizedBox(height: 8), Text(l10n.heightValue(detail.height))]),
              const SizedBox(height: 100),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text(l10n.weightLabel), const SizedBox(height: 8), Text(l10n.weightValue(detail.weight))]),
            ],
          ),
          const SizedBox(height: 12),
          Text(l10n.abilityLable,
              style: const TextStyle(
                fontSize: 20,
                color: PokedexColor.black90Alpha,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 8),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) {
              final statValue = detail.abilities[i].value;
              final statData = getAbilityData(detail.abilities[i].ability.name);
              if (statData == null) return null;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(statData.nameJa),
                  const SizedBox(width: 4),
                  Text(statValue.toString()),
                ],
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemCount: detail.abilities.length,
          )
        ],
      ),
    );
  }
}
