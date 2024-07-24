import 'package:flutter/material.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex/foundation/utils/type_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/presentation/screen/pokemon_detail/sections/height_weight_section.dart';
import 'package:pokedex/presentation/screen/pokemon_detail/sections/stat_section.dart';
import 'package:pokedex/presentation/screen/pokemon_detail/sections/top_image_section.dart';
import 'package:pokedex/presentation/screen/pokemon_detail/sections/type_section.dart';

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
          topImageSection(imageSectionHeight, detail.id, types),
          const SizedBox(height: 8),
          typesSection(types),
          const SizedBox(height: 8),
          heightWeightSection(
              l10n.heightLabel, l10n.heightValue(detail.height), l10n.weightLabel, l10n.weightValue(detail.weight)),
          statSections(l10n.statLabel, detail.stats),
        ],
      ),
    );
  }
}
