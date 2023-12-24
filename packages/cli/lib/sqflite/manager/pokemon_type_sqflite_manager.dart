import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class PokemonTypeSqfliteManager {
  PokemonTypeSqfliteManager(this._db);

  final Database _db;

  static const _tableName = PokemonTypeScheme.tableName;
  static const columnPokemonId = PokemonTypeScheme.columnPokemonId;
  static const columnType = PokemonTypeScheme.columnType;

  /// [pokemonTypeList] を DB に保存する。
  Future<void> savePokemonType(List<PokemonTypeScheme> pokemonTypeList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertPokemonTypeList(pokemonTypeList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    // 既にテーブルが存在する場合は削除する。
    await _db.execute('DROP TABLE IF EXISTS $_tableName');
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnPokemonId INTEGER,
        $columnType TEXT,
        PRIMARY KEY ($columnPokemonId, $columnType)
      )
    ''');
  }

  /// [pokemonTypeList] を挿入する。
  Future<void> _insertPokemonTypeList(
    List<PokemonTypeScheme> pokemonTypeList,
  ) async {
    for (final pokemonType in pokemonTypeList) {
      await _db.insert(
        _tableName,
        pokemonType.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
