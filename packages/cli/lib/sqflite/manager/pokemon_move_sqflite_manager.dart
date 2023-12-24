import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class PokemonMoveSqfliteManager {
  PokemonMoveSqfliteManager(this._db);

  final Database _db;

  static const _tableName = PokemonMoveScheme.tableName;
  static const columnPokemonId = PokemonMoveScheme.columnPokemonId;
  static const columnMoveId = PokemonMoveScheme.columnMoveId;

  /// [pokemonMoveList] を DB に保存する。
  Future<void> savePokemonMove(List<PokemonMoveScheme> pokemonMoveList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertPokemonMoveList(pokemonMoveList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnPokemonId INTEGER,
        $columnMoveId INTEGER,
        PRIMARY KEY ($columnPokemonId, $columnMoveId)
      )
    ''');
  }

  /// [pokemonMoveList] を挿入する。
  Future<void> _insertPokemonMoveList(
    List<PokemonMoveScheme> pokemonMoveList,
  ) async {
    for (final pokemonMove in pokemonMoveList) {
      await _db.insert(
        _tableName,
        pokemonMove.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
