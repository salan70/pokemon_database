import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_stats_scheme.freezed.dart';
part 'base_stats_scheme.g.dart';

/// 「種族値」のスキーマ。
@freezed
class BaseStatsScheme with _$BaseStatsScheme {
  const factory BaseStatsScheme({
    /// 対応するポケモンの ID.
    required int pokemonId,

    /// HP.
    required int hp,

    /// こうげき。
    required int attack,

    /// ぼうぎょ。
    required int defense,

    /// とくこう。
    required int specialAttack,

    /// とくぼう。
    required int specialDefense,

    /// すばやさ。
    required int speed,
  }) = _BaseStatsScheme;

  /// テーブル名。
  static const tableName = 'base_stats';

  /// カラム名: 対応するポケモンの ID.
  static const columnPokemonId = 'pokemonId';

  /// カラム名: HP.
  static const columnHp = 'hp';

  /// カラム名: こうげき。
  static const columnAttack = 'attack';

  /// カラム名: ぼうぎょ。
  static const columnDefense = 'defense';

  /// カラム名: とくこう。
  static const columnSpecialAttack = 'specialAttack';

  /// カラム名: とくぼう。
  static const columnSpecialDefense = 'specialDefense';

  /// カラム名: すばやさ。
  static const columnSpeed = 'speed';

  factory BaseStatsScheme.fromJson(Map<String, Object?> json) =>
      _$BaseStatsSchemeFromJson(json);
}
