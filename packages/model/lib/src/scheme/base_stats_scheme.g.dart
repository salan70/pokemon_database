// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_stats_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseStatsSchemeImpl _$$BaseStatsSchemeImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseStatsSchemeImpl(
      pokemonId: json['pokemonId'] as int,
      hp: json['hp'] as int,
      attack: json['attack'] as int,
      defense: json['defense'] as int,
      specialAttack: json['specialAttack'] as int,
      specialDefense: json['specialDefense'] as int,
      speed: json['speed'] as int,
    );

Map<String, dynamic> _$$BaseStatsSchemeImplToJson(
        _$BaseStatsSchemeImpl instance) =>
    <String, dynamic>{
      'pokemonId': instance.pokemonId,
      'hp': instance.hp,
      'attack': instance.attack,
      'defense': instance.defense,
      'specialAttack': instance.specialAttack,
      'specialDefense': instance.specialDefense,
      'speed': instance.speed,
    };
