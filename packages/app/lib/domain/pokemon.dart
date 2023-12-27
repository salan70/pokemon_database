import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

import 'ability.dart';
import 'base_stats.dart';

part 'pokemon.freezed.dart';

/// ポケモン オブジェクト。
@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    /// 図鑑番号。
    required int pokedex,

    /// 日本語名。
    required String name,

    /// 画像の URL.
    ///
    /// 画像がない場合は null が入る。
    required String? imageUrl,

    /// 「タイプ」リスト。
    required List<PokeType> typeList,

    /// 所持しうる「とくせい」リスト。
    required List<Ability> abilityList,

    /// 種族値。
    required BaseStats baseStats,
  }) = _Pokemon;
  const Pokemon._();

  /// [typeList] を 1行のテキストに変換する。
  String get typeTextSingleLine => typeList.map((e) => e.jaLabel).join(' ');

  /// [typeList] を複数行のテキストに変換する。
  String get typeTextMultiLine => typeList.map((e) => e.jaLabel).join('\n');

  /// [abilityList] を 1行のテキストに変換する。
  String get abilityTextSingleLine => abilityList.map((e) => e.name).join(' ');

  /// [abilityList] を複数行のテキストに変換する。
  String get abilityTextMultiLine => abilityList.map((e) => e.name).join('\n');
}
