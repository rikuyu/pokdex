import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/abstract_pokemon.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    String? next,
    String? previous,
    required List<AbstractPokemon> results,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) => _$PokemonResponseFromJson(json);
}
