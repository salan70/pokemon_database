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

  factory PokemonAbilityScheme.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitySchemeFromJson(json);
}
