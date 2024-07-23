import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type.g.dart';
part 'pokemon_type.freezed.dart';

@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType(@JsonKey(name: "type") Type data) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) => _$PokemonTypeFromJson(json);
}

@freezed
class Type with _$Type {
  const factory Type(String name) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
