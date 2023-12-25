import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_scheme.freezed.dart';
part 'pokemon_scheme.g.dart';

/// ポケモンのスキーマ。
@freezed
class PokemonScheme with _$PokemonScheme {
  const factory PokemonScheme({
    /// 図鑑番号。
    required int pokedex,

    /// 名前。
    required String name,

    /// 画像 URL.
    /// 
    /// 画像がない場合は、 null になる。
    required String? imageUrl,
  }) = _PokemonScheme;

  /// テーブル名。
  static const tableName = 'pokemon';

  /// カラム名：図鑑番号。
  static const columnPokedex = 'pokedex';

  /// カラム名：名前。
  static const columnName = 'name';

  /// カラム名：画像 URL.
  static const columnImageUrl = 'imageUrl';

  factory PokemonScheme.fromJson(Map<String, Object?> json) =>
      _$PokemonSchemeFromJson(json);
}
