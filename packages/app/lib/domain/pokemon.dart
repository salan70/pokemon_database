import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

import 'ability.dart';
import 'base_stats.dart';
import 'move.dart';

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

    /// 覚える「わざ」リスト。
    required List<Move> moveList,

    /// 種族値。
    required BaseStats baseStats,
  }) = _Pokemon;
}