// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailImpl _$$PokemonDetailImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDetailImpl(
      (json['id'] as num).toInt(),
      (json['height'] as num).toInt(),
      (json['weight'] as num).toInt(),
      (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDetailImplToJson(_$PokemonDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'stats': instance.stats,
    };
