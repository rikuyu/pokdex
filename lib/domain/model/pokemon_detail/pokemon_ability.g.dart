// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonAbilityImpl _$$PokemonAbilityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonAbilityImpl(
      (json['base_stat'] as num).toInt(),
      Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityImplToJson(
        _$PokemonAbilityImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.value,
      'stat': instance.ability,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      json['name'] as String,
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
