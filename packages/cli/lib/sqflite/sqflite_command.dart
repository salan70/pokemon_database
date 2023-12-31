import 'dart:io';

import 'package:model/model.dart';
import 'package:path/path.dart' as p;
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
  final _dbPath =
      p.join(Directory.current.parent.path, 'assets', 'db', pokemonDb);

  /// ポケモンに関連するデータを DB に保存する。
  Future<void> savePokemonData({
    required List<PokemonScheme> pokemonList,
    required List<PokemonAbilityScheme> pokemonAbilityList,
    required List<PokemonMoveScheme> pokemonMoveList,
    required List<PokemonTypeScheme> pokemonTypeList,
    required List<BaseStatsScheme> baseStatsList,
  }) async {
    final db = await databaseFactoryFfi.openDatabase(_dbPath);

    await PokemonSqfliteManager(db).savePokemon(pokemonList);
    await PokemonAbilitySqfliteManager(db).saveAbility(pokemonAbilityList);
    await PokemonMoveSqfliteManager(db).savePokemonMove(pokemonMoveList);
    await PokemonTypeSqfliteManager(db).savePokemonType(pokemonTypeList);
    await BaseStatsSqfliteManager(db).saveBaseStats(baseStatsList);

    await db.close();
  }

  /// 「わざ」に関連するデータを DB に保存する。
  Future<void> saveMoveData(List<MoveScheme> moveList) async {
    final db = await databaseFactoryFfi.openDatabase(_dbPath);

    await MoveSqfliteManager(db).saveMove(moveList);

    await db.close();
  }

  /// 「とくせい」に関連するデータを DB に保存する。
  Future<void> saveAbilityData(List<AbilityScheme> abilityList) async {
    final db = await databaseFactoryFfi.openDatabase(_dbPath);

    await AbilitySqfliteManager(db).saveAbility(abilityList);

    await db.close();
  }

  /// [pokemonMap] をもとに、[PokemonScheme.name] を更新する。
  /// 
  /// [pokemonMap] は [PokemonScheme.pokedex] をキー、
  /// [PokemonScheme.name] をバリューとする Map を想定している。
  Future<void> updatePokemonNames(Map<int, String> pokemonMap) async {
    final db = await databaseFactoryFfi.openDatabase(_dbPath);

    await PokemonSqfliteManager(db).updatePokemonNames(pokemonMap);

    await db.close();
  }
}
