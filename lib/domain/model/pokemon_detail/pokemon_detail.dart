import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/model/pokemon_detail/pokemon_type.dart';

part 'pokemon_detail.g.dart';
part 'pokemon_detail.freezed.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail({
    required int id,
    required int height,
    required int wight,
    required List<PokemonType> types,
  }) = _PokemonDetail;

  factory PokemonDetail.fromJson(Map<String, Object?> json) => _$PokemonDetailFromJson(json);
}
