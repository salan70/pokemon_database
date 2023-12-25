import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability.freezed.dart';

/// とくせい オブジェクト。
@freezed
class Ability with _$Ability {
  const factory Ability({
    /// id.
    required String id,

    /// 日本語名。
    required String name,

    /// 説明（日本語）。
    /// 
    /// 説明がない場合は 空文字 が入る。
    required String description,
  }) = _Ability;
}