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

  factory AbilityScheme.fromJson(Map<String, dynamic> json) =>
      _$AbilitySchemeFromJson(json);
}
