import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class AbilitySqfliteManager {
  AbilitySqfliteManager(this._db);

  final Database _db;

  static const _tableName = AbilityScheme.tableName;
  static const columnId = AbilityScheme.columnId;
  static const columnName = AbilityScheme.columnName;
  static const columnDescription = AbilityScheme.columnDescription;

  /// [abilityList] を DB に保存する。
  Future<void> saveAbility(List<AbilityScheme> abilityList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertAbilityList(abilityList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    // 既にテーブルが存在する場合は削除する。
    await _db.execute('DROP TABLE IF EXISTS $_tableName');
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT,
        $columnDescription TEXT
      )
    ''');
  }

  /// [abilityList] を挿入する。
  Future<void> _insertAbilityList(List<AbilityScheme> abilityList) async {
    for (final ability in abilityList) {
      await _db.insert(
        _tableName,
        ability.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
