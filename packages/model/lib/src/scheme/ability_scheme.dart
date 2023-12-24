import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_scheme.freezed.dart';
part 'ability_scheme.g.dart';

/// 「とくせい」のスキーマ。
@freezed
class AbilityScheme with _$AbilityScheme {
  const factory AbilityScheme({
    /// ID.
    required int id,

    /// 名前。
    required String name,

    /// 説明。
    required String description,
  }) = _AbilityScheme;

  /// テーブル名。
  static const tableName = 'ability';

  /// カラム名: ID。
  static const columnId = 'id';

  /// カラム名: 名前。
  static const columnName = 'name';

  /// カラム名: 説明。
  static const columnDescription = 'description';

  factory AbilityScheme.fromJson(Map<String, Object?> json) =>
      _$AbilitySchemeFromJson(json);
}
