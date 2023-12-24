import 'package:freezed_annotation/freezed_annotation.dart';

import '../constant/move_category.dart';
import '../constant/poke_type.dart';

part 'move_scheme.freezed.dart';
part 'move_scheme.g.dart';

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

    /// 技の種類.
    ///
    /// 例: ぶつり, とくしゅ, へんか。
    required MoveCategory category,

    /// 威力。
    required int? power,

    /// 命中率（%）。
    required int? accuracy,

    /// PP.
    required int pp,
  }) = _MoveScheme;

  /// テーブル名。
  static const tableName = 'move';

  /// カラム名: ID。
  static const columnId = 'id';

  /// カラム名: 名前。
  static const columnName = 'name';

  /// カラム名: タイプ。
  static const columnType = 'type';

  /// カラム名: 説明。
  static const columnDescription = 'description';

  /// カラム名: カテゴリ。
  static const columnCategory = 'category';

  /// カラム名: 威力。
  static const columnPower = 'power';

  /// カラム名: 命中率。
  static const columnAccuracy = 'accuracy';

  /// カラム名: PP。
  static const columnPp = 'pp';

  factory MoveScheme.fromJson(Map<String, Object?> json) =>
      _$MoveSchemeFromJson(json);
}
