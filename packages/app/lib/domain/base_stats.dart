import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

part 'base_stats.freezed.dart';

/// 種族値 オブジェクト。
@freezed
class BaseStats with _$BaseStats {
  const factory BaseStats({
    /// HP。
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
  }) = _BaseStats;
  const BaseStats._();

  /// [BaseStatsScheme] から [BaseStats] を生成する。
  factory BaseStats.fromScheme(BaseStatsScheme scheme) {
    return BaseStats(
      hp: scheme.hp,
      attack: scheme.attack,
      defense: scheme.defense,
      specialAttack: scheme.specialAttack,
      specialDefense: scheme.specialDefense,
      speed: scheme.speed,
    );
  }

  /// 合計値。
  int get total =>
      hp + attack + defense + specialAttack + specialDefense + speed;
}
