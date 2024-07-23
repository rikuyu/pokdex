import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_ability.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_type.dart';

part 'pokemon_detail.g.dart';
part 'pokemon_detail.freezed.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail(
    int id,
    int height,
    int weight,
    List<PokemonType> types,
    @JsonKey(name: "stats") List<PokemonAbility> abilities,
  ) = _PokemonDetail;

  factory PokemonDetail.fromJson(Map<String, Object?> json) => _$PokemonDetailFromJson(json);
}
