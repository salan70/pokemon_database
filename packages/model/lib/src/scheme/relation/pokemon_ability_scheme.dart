import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_scheme.freezed.dart';
part 'pokemon_ability_scheme.g.dart';

/// ポケモンと「とくせい」の中間テーブルのスキーマ。
@freezed
class PokemonAbilityScheme with _$PokemonAbilityScheme {
  const factory PokemonAbilityScheme({
    /// ポケモンの ID.
    required int pokemonId,

    /// 「とくせい」の ID.
    required int abilityId,
  }) = _PokemonAbilityScheme;

  /// テーブル名。
  static const tableName = 'pokemon_ability';

  /// カラム名: ポケモンの ID.
  static const columnPokemonId = 'pokemonId';

  /// カラム名: 「とくせい」の ID.
  static const columnAbilityId = 'abilityId';

  factory PokemonAbilityScheme.fromJson(Map<String, Object?> json) =>
      _$PokemonAbilitySchemeFromJson(json);
}
