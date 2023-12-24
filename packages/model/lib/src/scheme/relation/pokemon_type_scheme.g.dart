// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeSchemeImpl _$$PokemonTypeSchemeImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeSchemeImpl(
      pokemonId: json['pokemonId'] as int,
      type: $enumDecode(_$PokeTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$PokemonTypeSchemeImplToJson(
        _$PokemonTypeSchemeImpl instance) =>
    <String, dynamic>{
      'pokemonId': instance.pokemonId,
      'type': _$PokeTypeEnumMap[instance.type]!,
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
