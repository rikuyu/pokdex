import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability.g.dart';
part 'pokemon_ability.freezed.dart';

@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility(
    @JsonKey(name: "base_stat") int value,
    @JsonKey(name: "stat") Stat ability,
  ) = _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, Object?> json) => _$PokemonAbilityFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat(String name) = _Stat;

  factory Stat.fromJson(Map<String, Object?> json) => _$StatFromJson(json);
}
