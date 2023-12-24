import 'package:model/model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'manager/ability_sqflite_manager.dart';
import 'manager/base_stats_sqflite_manager.dart';
import 'manager/move_sqflite_manager.dart';
import 'manager/pokemon_ability_sqflite_manager.dart';
import 'manager/pokemon_move_sqflite_manager.dart';
import 'manager/pokemon_sqflite_manager.dart';
import 'manager/pokemon_type_sqflite_manager.dart';

/// 各 SqfliteManager の実行を行うクラス。
class SqfliteCommand {
  /// ポケモンに関連するデータを DB に保存する。
  Future<void> savePokemonData({
    required List<PokemonScheme> pokemonList,
    required List<PokemonAbilityScheme> pokemonAbilityList,
    required List<PokemonMoveScheme> pokemonMoveList,
    required List<PokemonTypeScheme> pokemonTypeList,
    required List<BaseStatsScheme> baseStatsList,
  }) async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await PokemonSqfliteManager(db).savePokemon(pokemonList);
    await PokemonAbilitySqfliteManager(db).saveAbility(pokemonAbilityList);
    await PokemonMoveSqfliteManager(db).savePokemonMove(pokemonMoveList);
    await PokemonTypeSqfliteManager(db).savePokemonType(pokemonTypeList);
    await BaseStatsSqfliteManager(db).saveBaseStats(baseStatsList);

    await db.close();
  }

  /// 「わざ」に関連するデータを DB に保存する。
  Future<void> saveMoveData(List<MoveScheme> moveList) async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await MoveSqfliteManager(db).saveMove(moveList);

    await db.close();
  }

  /// 「とくせい」に関連するデータを DB に保存する。
  Future<void> saveAbilityData(List<AbilityScheme> abilityList) async {
    final db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);

    await AbilitySqfliteManager(db).saveAbility(abilityList);

    await db.close();
  }
}
