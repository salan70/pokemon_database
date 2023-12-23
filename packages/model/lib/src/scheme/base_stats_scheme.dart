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

  factory BaseStatsScheme.fromJson(Map<String, dynamic> json) =>
      _$BaseStatsSchemeFromJson(json);
}
