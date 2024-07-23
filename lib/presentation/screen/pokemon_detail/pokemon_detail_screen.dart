import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex/foundation/pokedex_color.dart';
import 'package:pokedex/foundation/widgets/pokedex_scaffold.dart';
import 'package:pokedex/presentation/screen/pokemon_detail/pokemon_detail_body.dart';
import 'package:pokedex/presentation/state/pokemon_detail/pokemon_detail_state.dart';

@RoutePage()
class PokemonDetailScreen extends ConsumerWidget {
  const PokemonDetailScreen({required this.id, required this.name, super.key});

  final int id;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<PokemonDetail> state = ref.watch(pokemonDetailStateProvider(id));
    return PokedexScaffold(
        title: name,
        body: state.when(
            data: (detail) => PokemonDetailBody(detail),
            error: (_, __) => const Center(child: Icon(Icons.error)),
            loading: () => const Center(child: CircularProgressIndicator(color: PokedexColor.primaryContainer))));
  }
}
