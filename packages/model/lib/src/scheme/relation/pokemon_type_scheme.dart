import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/src/enum/poke_type.dart';

part 'pokemon_type_scheme.freezed.dart';
part 'pokemon_type_scheme.g.dart';

/// ポケモンとタイプの中間テーブルのスキーマ。
@freezed
class PokemonTypeScheme with _$PokemonTypeScheme {
  const factory PokemonTypeScheme({
    /// ポケモンの ID.
    required int pokemonId,

    /// タイプ.
    required PokeType type,
  }) = _PokemonTypeScheme;

  factory PokemonTypeScheme.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSchemeFromJson(json);
}