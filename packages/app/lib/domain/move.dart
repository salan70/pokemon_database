import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

part 'move.freezed.dart';

/// わざ オブジェクト。
@freezed
class Move with _$Move {
  const factory Move({
    /// id.
    required String id,

    /// 日本語名。
    required String name,

    /// タイプ。
    required PokeType type,

    /// 分類。
    ///
    /// 例: ぶつり、とくしゅ、へんか。
    required MoveCategory category,

    /// 説明（日本語）。
    ///
    /// 説明がない場合は 空文字 が入る。
    required String description,

    /// 威力。
    ///
    /// へんかわざなど、威力がない場合は null が入る。
    required int? power,

    /// 命中率。
    ///
    /// 必中のわざなど、命中率がない場合は null が入る。
    required int? accuracy,

    /// PP。
    required int pp,
  }) = _Move;
}
