import 'package:flutter/services.dart';
import 'package:model/model.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../util/constant/strings.dart';
import '../util/logger.dart';

part 'ability_repository.g.dart';

/// [AbilityRepository] を保持する provider.
@riverpod
Future<AbilityRepository> abilityRepository(AbilityRepositoryRef ref) async {
  final abilityRepository = AbilityRepository();
  await abilityRepository.loadDb();

  ref.onCancel(() async {
    logger.i('abilityRepository をクローズします。');
    await abilityRepository.closeDb();
  });

  return abilityRepository;
}

/// 「とくせい」のデータを取得するためのリポジトリクラス。
class AbilityRepository {
  late final Database _db;

  /// assets から db ファイルを読み込む。
  Future<void> loadDb() async {
    final path = join(abilityDbPath);
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

  /// [idList] に合致する [AbilityScheme] のリストを取得する。
  Future<List<AbilityScheme>> fetchAbilitySchemeList(List<int> idList) async {
    final abilityMapList = await _db.query(
      AbilityScheme.tableName,
      where: 'id IN (${idList.join(',')})',
    );

    /// AbilityScheme に変換して返す。
    return abilityMapList.map(AbilityScheme.fromJson).toList();
  }
}
