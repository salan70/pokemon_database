import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class BaseStatsSqfliteManager {
  BaseStatsSqfliteManager(this._db);

  final Database _db;

  static const _tableName = BaseStatsScheme.tableName;
  static const columnPokemonId = BaseStatsScheme.columnPokemonId;
  static const columnHp = BaseStatsScheme.columnHp;
  static const columnAttack = BaseStatsScheme.columnAttack;
  static const columnDefense = BaseStatsScheme.columnDefense;
  static const columnSpecialAttack = BaseStatsScheme.columnSpecialAttack;
  static const columnSpecialDefense = BaseStatsScheme.columnSpecialDefense;
  static const columnSpeed = BaseStatsScheme.columnSpeed;

  /// [baseStatsList] を DB に保存する。
  Future<void> saveBaseStats(List<BaseStatsScheme> baseStatsList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertBaseStatsList(baseStatsList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnPokemonId INTEGER PRIMARY KEY,
        $columnHp INTEGER,
        $columnAttack INTEGER,
        $columnDefense INTEGER,
        $columnSpecialAttack INTEGER,
        $columnSpecialDefense INTEGER,
        $columnSpeed INTEGER
      )
    ''');
  }

  /// [baseStatsList] を挿入する。
  Future<void> _insertBaseStatsList(List<BaseStatsScheme> baseStatsList) async {
    for (final baseStats in baseStatsList) {
      await _db.insert(
        _tableName,
        baseStats.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
