// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveSchemeImpl _$$MoveSchemeImplFromJson(Map<String, dynamic> json) =>
    _$MoveSchemeImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      type: $enumDecode(_$PokeTypeEnumMap, json['type']),
      description: json['description'] as String,
      category: $enumDecode(_$MoveCategoryEnumMap, json['category']),
      power: json['power'] as int?,
      accuracy: json['accuracy'] as int?,
      pp: json['pp'] as int,
    );

Map<String, dynamic> _$$MoveSchemeImplToJson(_$MoveSchemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$PokeTypeEnumMap[instance.type]!,
      'description': instance.description,
      'category': _$MoveCategoryEnumMap[instance.category]!,
      'power': instance.power,
      'accuracy': instance.accuracy,
      'pp': instance.pp,
    };

const _$PokeTypeEnumMap = {
  PokeType.normal: 'normal',
  PokeType.fire: 'fire',
  PokeType.water: 'water',
  PokeType.electric: 'electric',
  PokeType.grass: 'grass',
  PokeType.ice: 'ice',
  PokeType.fighting: 'fighting',
  PokeType.poison: 'poison',
  PokeType.ground: 'ground',
  PokeType.flying: 'flying',
  PokeType.psychic: 'psychic',
  PokeType.bug: 'bug',
  PokeType.rock: 'rock',
  PokeType.ghost: 'ghost',
  PokeType.dragon: 'dragon',
  PokeType.dark: 'dark',
  PokeType.steel: 'steel',
  PokeType.fairy: 'fairy',
};

const _$MoveCategoryEnumMap = {
  MoveCategory.physical: 'physical',
  MoveCategory.special: 'special',
  MoveCategory.status: 'status',
};
