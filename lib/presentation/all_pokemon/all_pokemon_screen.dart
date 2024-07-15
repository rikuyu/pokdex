import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/foundation/widgets/pokedex_scaffold.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/presentation/all_pokemon/all_pokemon_item.dart';
import 'package:pokedex/presentation/all_pokemon/all_pokemon_state.dart';
import 'package:pokedex/domain/model/pokemon.dart';

@RoutePage()
class AllPokemonScreen extends ConsumerWidget {
  const AllPokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    L10n l10n = L10n.of(context);
    AllPokemonState notifier = ref.read(allPokemonStateProvider.notifier);
    AsyncValue<List<Pokemon>> state = ref.watch(allPokemonStateProvider);

    return PokedexScaffold(
        title: l10n.appTitle,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemCount: state.value?.length ?? 0,
            itemBuilder: (c, i) {
              final pokemon = state.value?[i];
              if (pokemon == null) return null;
              return AllPokemonItem(pokemon);
            },
          ),
        ));
  }
}
