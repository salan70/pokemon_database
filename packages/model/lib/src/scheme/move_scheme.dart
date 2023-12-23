import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/move_category.dart';
import '../enum/poke_type.dart';

part 'move_scheme.freezed.dart';

/// 「わざ」のスキーマ。
@freezed
class MoveScheme with _$MoveScheme {
  const factory MoveScheme({
    /// ID.
    required int id,

    /// 名前。
    required String name,

    /// タイプ.
    required PokeType type,

    /// 説明。
    required String description,

    /// カテゴリ ID.
    required MoveCategory category,

    /// 威力。
    required int? power,

    /// 命中率。
    required double? accuracy,

    /// PP.
    required int pp,
  }) = _MoveScheme;
}
