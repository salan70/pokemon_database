import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class PokemonAbilitySqfliteManager {
  PokemonAbilitySqfliteManager(this._db);

  final Database _db;

  static const _tableName = PokemonAbilityScheme.tableName;
  static const columnPokemonId = PokemonAbilityScheme.columnPokemonId;
  static const columnAbilityId = PokemonAbilityScheme.columnAbilityId;

  /// [pokemonAbilityList] を DB に保存する。
  Future<void> saveAbility(
    List<PokemonAbilityScheme> pokemonAbilityList,
  ) async {
    // テーブルを作成する。
    await _createTable();

    // データを挿入する。
    await _insertPokemonAbilityList(pokemonAbilityList);
  }

  /// テーブルを作成する。
  Future<void> _createTable() async {
    await _db.execute('''
      CREATE TABLE $_tableName (
        $columnPokemonId INTEGER,
        $columnAbilityId INTEGER,
        PRIMARY KEY ($columnPokemonId, $columnAbilityId)
      )
    ''');
  }

  /// [pokemonAbilityList] を挿入する。
  Future<void> _insertPokemonAbilityList(
    List<PokemonAbilityScheme> pokemonAbilityList,
  ) async {
    for (final pokemonAbility in pokemonAbilityList) {
      await _db.insert(
        _tableName,
        pokemonAbility.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
