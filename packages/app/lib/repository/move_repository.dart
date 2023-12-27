import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'db_state.dart';

part 'move_repository.g.dart';

/// [MoveRepository] を保持する provider.
@riverpod
MoveRepository moveRepository(MoveRepositoryRef ref) => MoveRepository(ref);

/// 「わざ」のデータを取得するためのリポジトリクラス。
class MoveRepository {
  MoveRepository(this._ref);

  final Ref _ref;

  /// [idList] に合致する [MoveScheme] のリストを取得する。
  Future<List<MoveScheme>> fetchMoveSchemeList(List<int> idList) async {
    final db = await _ref.read(dbProvider(moveDb).future);
    final moveMapList = await db.query(
      MoveScheme.tableName,
      where: 'id IN (${idList.join(',')})',
    );

    /// MoveScheme に変換して返す。
    return moveMapList.map(MoveScheme.fromJson).toList();
  }
}
