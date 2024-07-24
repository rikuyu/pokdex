import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_stat.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/stat_data.dart';

Widget statSections(String statLabel, List<PokemonStat> stats) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Text(statLabel,
            style: const TextStyle(
              fontSize: 16,
              color: PokedexColor.black90Alpha,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 14),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, i) {
            final statData = getStatData(stats[i].stat.name);
            if (statData == null) return null;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 80,
                    child: Text(statData.nameJa,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: PokedexColor.black10Alpha,
                          decorationThickness: 5.0,
                        ))),
                const SizedBox(width: 4),
                Expanded(
                  child: SizedBox(
                      height: 16,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: PokedexColor.black10Alpha,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Container(
                            width: stats[i].value.toDouble(),
                            decoration: BoxDecoration(
                              color: statData.color,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )),
                )
              ],
            );
          },
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemCount: stats.length,
        )
      ],
    ),
  );
}
