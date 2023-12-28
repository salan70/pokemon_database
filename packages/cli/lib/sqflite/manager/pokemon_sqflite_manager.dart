import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class PokemonSqfliteManager {
  PokemonSqfliteManager(this._db);

  final Database _db;

  static const _tableName = PokemonScheme.tableName;
  static const columnPokedex = PokemonScheme.columnPokedex;
  static const columnName = PokemonScheme.columnName;
  static const columnImageUrl = PokemonScheme.columnImageUrl;

  /// [pokemonList] を DB に保存する。
  Future<void> savePokemon(List<PokemonScheme> pokemonList) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertPokemonList(pokemonList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    // 既にテーブルが存在する場合は削除する。
    await _db.execute('DROP TABLE IF EXISTS $_tableName');
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnPokedex INTEGER PRIMARY KEY,
        $columnName TEXT,
        $columnImageUrl TEXT
      )
    ''');
  }

  /// [pokemonList] を挿入する。
  Future<void> _insertPokemonList(List<PokemonScheme> pokemonList) async {
    for (final pokemon in pokemonList) {
      await _db.insert(
        _tableName,
        pokemon.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  /// [pokemonMap] をもとに、[PokemonScheme.name] を更新する。
  /// 
  /// [pokemonMap] は [PokemonScheme.pokedex] をキー、
  /// [PokemonScheme.name] をバリューとする Map を想定している。
  Future<void> updatePokemonNames(Map<int, String> pokemonMap) async {
    for (final entry in pokemonMap.entries) {
      await _db.execute(
        'UPDATE $_tableName SET $columnName = ? WHERE $columnPokedex = ?',
        [entry.value, entry.key],
      );
    }
  }
}
