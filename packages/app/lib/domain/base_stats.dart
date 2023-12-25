import 'package:freezed_annotation/freezed_annotation.dart';

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
}
