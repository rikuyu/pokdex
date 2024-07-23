// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatImpl _$$PokemonStatImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatImpl(
      (json['base_stat'] as num).toInt(),
      Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatImplToJson(_$PokemonStatImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.value,
      'stat': instance.stat,
    };

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      json['name'] as String,
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
