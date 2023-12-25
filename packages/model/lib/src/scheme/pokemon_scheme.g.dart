// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSchemeImpl _$$PokemonSchemeImplFromJson(Map<String, dynamic> json) =>
    _$PokemonSchemeImpl(
      pokedex: json['pokedex'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$PokemonSchemeImplToJson(_$PokemonSchemeImpl instance) =>
    <String, dynamic>{
      'pokedex': instance.pokedex,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };
