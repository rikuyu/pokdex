import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stat.g.dart';
part 'pokemon_stat.freezed.dart';

@freezed
class PokemonStat with _$PokemonStat {
  const factory PokemonStat(
    @JsonKey(name: "base_stat") int value,
    Stat stat,
  ) = _PokemonStat;

  factory PokemonStat.fromJson(Map<String, Object?> json) => _$PokemonStatFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat(String name) = _Stat;

  factory Stat.fromJson(Map<String, Object?> json) => _$StatFromJson(json);
}
