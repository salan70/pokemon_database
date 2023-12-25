import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

part 'ability.freezed.dart';

/// とくせい オブジェクト。
@freezed
class Ability with _$Ability {
  const factory Ability({
    /// id.
    required int id,

    /// 日本語名。
    required String name,

    /// 説明（日本語）。
    ///
    /// 説明がない場合は 空文字 が入る。
    required String description,
  }) = _Ability;

  /// [AbilityScheme] から [Ability] を生成する。
  factory Ability.fromScheme(AbilityScheme scheme) {
    return Ability(
      id: scheme.id,
      name: scheme.name,
      description: scheme.description,
    );
  }
}
