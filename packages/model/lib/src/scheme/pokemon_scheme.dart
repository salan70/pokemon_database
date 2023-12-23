import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_scheme.freezed.dart';

/// ポケモンのスキーマ。
@freezed
class PokemonScheme with _$PokemonScheme {
  const factory PokemonScheme({
    /// 図鑑番号。
    required int pokedex,

    /// 名前。
    required String name,

    /// 画像 URL.
    required String imageUrl,
  }) = _PokemonScheme;
}
