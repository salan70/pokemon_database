import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_move_scheme.freezed.dart';

/// ポケモンと「わざ」の中間テーブルのスキーマ。
@freezed
class PokemonMoveScheme with _$PokemonMoveScheme {
  const factory PokemonMoveScheme({
    /// ポケモンの ID.
    required int pokemonId,

    /// 「わざ」の ID.
    required int moveId,
  }) = _PokemonMoveScheme;
}
