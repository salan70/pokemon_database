import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_move_scheme.freezed.dart';
part 'pokemon_move_scheme.g.dart';

/// ポケモンと「わざ」の中間テーブルのスキーマ。
@freezed
class PokemonMoveScheme with _$PokemonMoveScheme {
  const factory PokemonMoveScheme({
    /// ポケモンの ID.
    required int pokemonId,

    /// 「わざ」の ID.
    required int moveId,
  }) = _PokemonMoveScheme;

  /// テーブル名。
  static const tableName = 'pokemon_move';

  /// カラム名: ポケモンの ID.
  static const columnPokemonId = 'pokemonId';

  /// カラム名: 「わざ」の ID.
  static const columnMoveId = 'moveId';

  factory PokemonMoveScheme.fromJson(Map<String, Object?> json) =>
      _$PokemonMoveSchemeFromJson(json);
}
