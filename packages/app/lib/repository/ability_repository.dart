import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'db_state.dart';

part 'ability_repository.g.dart';

/// [AbilityRepository] を保持する provider.
@riverpod
AbilityRepository abilityRepository(AbilityRepositoryRef ref) =>
    AbilityRepository(ref);

/// 「とくせい」のデータを取得するためのリポジトリクラス。
class AbilityRepository {
  AbilityRepository(this._ref);

  final Ref _ref;

  /// [idList] に合致する [AbilityScheme] のリストを取得する。
  Future<List<AbilityScheme>> fetchAbilitySchemeList(List<int> idList) async {
    final db = await _ref.read(dbProvider(abilityDb).future);

    final abilityMapList = await db.query(
      AbilityScheme.tableName,
      where: 'id IN (${idList.join(',')})',
    );

    /// AbilityScheme に変換して返す。
    return abilityMapList.map(AbilityScheme.fromJson).toList();
  }
}
