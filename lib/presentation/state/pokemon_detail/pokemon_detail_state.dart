import 'package:pokedex/domain/model/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex/domain/use_case/pokemon_detail/get_pokemon_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_detail_state.g.dart';

@riverpod
class PokemonDetailState extends _$PokemonDetailState {
  @override
  Future<PokemonDetail> build(int pokemonId) => ref.watch(getPokemonDetailProvider).call(pokemonId);
}
