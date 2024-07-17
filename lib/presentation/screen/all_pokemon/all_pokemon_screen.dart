import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:pokedex/foundation/widgets/pokedex_scaffold.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/presentation/screen/all_pokemon/all_pokemon_item.dart';
import 'package:pokedex/presentation/state/all_pokemon/all_pokemon_state.dart';

@RoutePage()
class AllPokemonScreen extends ConsumerWidget {
  const AllPokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    L10n l10n = L10n.of(context);
    AsyncValue<List<Pokemon>> state = ref.watch(allPokemonStateProvider);

    return PokedexScaffold(
        title: l10n.appTitle,
        body: state.when(
            loading: () => const Center(child: CircularProgressIndicator(color: PokedexColor.primaryContainer)),
            error: (_, __) => const Center(child: Icon(Icons.error)),
            data: (pokemons) {
              return Container(
                color: PokedexColor.backgroundColor,
                child: CustomScrollView(slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 1,
                      ),
                      delegate: SliverChildBuilderDelegate((_, i) {
                        final pokemon = state.value?[i];
                        if (pokemon == null) return null;
                        return AllPokemonItem(pokemon);
                      }, childCount: state.value?.length ?? 0),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    sliver: SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator(color: PokedexColor.primaryContainer))),
                  ),
                ]),
              );
            }));
  }
}
