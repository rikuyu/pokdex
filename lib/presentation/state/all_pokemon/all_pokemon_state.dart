import 'package:pokedex/domain/use_case/all_pokemon/get_all_pokemon_use_case.dart';
import 'package:pokedex/foundation/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_pokemon_state.g.dart';

@riverpod
class AllPokemonState extends _$AllPokemonState {
  @override
  Future<List<Pokemon>> build() => ref.watch(getAllPokemonUseCaseProvider).getPokemonList();

  Future<void> loadMore() async {
    final pokemons = await ref.watch(getAllPokemonUseCaseProvider).getPokemonList();
    // state = [...state., pokemons];
  }
}
