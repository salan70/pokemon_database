import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/src/constant/poke_type.dart';

part 'pokemon_type_scheme.freezed.dart';
part 'pokemon_type_scheme.g.dart';

/// ポケモンとタイプの中間テーブルのスキーマ。
@freezed
class PokemonTypeScheme with _$PokemonTypeScheme {
  const factory PokemonTypeScheme({
    /// ポケモンの ID.
    required int pokemonId,

    /// タイプ。
    required PokeType type,
  }) = _PokemonTypeScheme;

  /// テーブル名。
  static const tableName = 'pokemon_type';

  /// カラム名: ポケモンの ID.
  static const columnPokemonId = 'pokemonId';

  /// カラム名: タイプ。
  static const columnType = 'type';

  factory PokemonTypeScheme.fromJson(Map<String, Object?> json) =>
      _$PokemonTypeSchemeFromJson(json);
}
