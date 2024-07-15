import 'package:pokedex/domain/use_case/get_all_pokemon_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex/domain/model/pokemon.dart';

part 'all_pokemon_state.g.dart';

@riverpod
class AllPokemonState extends _$AllPokemonState {
  @override
  Future<List<Pokemon>> build() => ref.watch(getAllPokemonUseCaseProvider).getPokemonList();
}
