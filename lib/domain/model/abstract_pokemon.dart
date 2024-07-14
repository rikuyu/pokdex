import 'package:freezed_annotation/freezed_annotation.dart';

part 'abstract_pokemon.freezed.dart';
part 'abstract_pokemon.g.dart';

@freezed
class AbstractPokemon with _$AbstractPokemon {
  const factory AbstractPokemon({
    required String name,
    required String url,
  }) = _AbstractPokemon;

  factory AbstractPokemon.fromJson(Map<String, Object?> json) => _$AbstractPokemonFromJson(json);
}
