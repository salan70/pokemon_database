import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class MoveSqfliteManager {
  MoveSqfliteManager(this._db);

  final Database _db;

  static const _tableName = MoveScheme.tableName;
  static const columnId = MoveScheme.columnId;
  static const columnName = MoveScheme.columnName;
  static const columnType = MoveScheme.columnType;
  static const columnDescription = MoveScheme.columnDescription;
  static const columnCategory = MoveScheme.columnCategory;
  static const columnPower = MoveScheme.columnPower;
  static const columnAccuracy = MoveScheme.columnAccuracy;
  static const columnPp = MoveScheme.columnPp;

  /// [moveList] を DB に保存する。
  Future<void> saveMove(List<MoveScheme> moveList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertMoveList(moveList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT,
        $columnType TEXT,
        $columnDescription TEXT,
        $columnCategory TEXT,
        $columnPower INTEGER,
        $columnAccuracy INTEGER,
        $columnPp INTEGER
      )
    ''');
  }

  /// [moveList] を挿入する。
  Future<void> _insertMoveList(List<MoveScheme> moveList) async {
    for (final move in moveList) {
      await _db.insert(
        _tableName,
        move.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
