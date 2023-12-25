import 'package:flutter/services.dart';
import 'package:model/model.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../util/logger.dart';

part 'move_repository.g.dart';

/// [MoveRepository] を保持する provider.
@riverpod
Future<MoveRepository> moveRepository(MoveRepositoryRef ref) async {
  final moveRepository = MoveRepository();
  await moveRepository.loadDb();

  ref.onCancel(() async {
    logger.i('moveRepository をクローズします。');
    await moveRepository.closeDb();
  });

  return moveRepository;
}

/// 「わざ」のデータを取得するためのリポジトリクラス。
class MoveRepository {
  late final Database _db;

  /// assets から db ファイルを読み込む。
  Future<void> loadDb() async {
    final path = join('assets/db/$moveDb');
    final loadedDb = await rootBundle.load(path);
    final dbBytes = loadedDb.buffer.asUint8List();
    await databaseFactoryFfiWeb.writeDatabaseBytes(
      path,
      dbBytes,
    );

    _db = await databaseFactoryFfiWeb.openDatabase(path);
  }

  /// [_db] をクローズする。
  Future<void> closeDb() async => _db.close();

  /// [idList] に合致する [MoveScheme] のリストを取得する。
  Future<List<MoveScheme>> fetchMoveSchemeList(List<int> idList) async {
    final moveMapList = await _db.query(
      MoveScheme.tableName,
      where: 'id IN (${idList.join(',')})',
    );

    /// MoveScheme に変換して返す。
    return moveMapList.map(MoveScheme.fromJson).toList();
  }
}
