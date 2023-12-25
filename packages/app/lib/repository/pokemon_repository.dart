import 'package:flutter/services.dart';
import 'package:model/model.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

import '../util/constant/strings.dart';
import '../util/logger.dart';

part 'pokemon_repository.g.dart';

/// [PokemonRepository] を保持する provider.
@riverpod
Future<PokemonRepository> pokemonRepository(PokemonRepositoryRef ref) async {
  final pokemonRepository = PokemonRepository();
  await pokemonRepository.loadDb();

  ref.onCancel(() async {
    logger.i('pokemonRepository をクローズします。');
    await pokemonRepository.closeDb();
  });

  return pokemonRepository;
}

/// ポケモンのデータを取得するためのリポジトリクラス。
class PokemonRepository {
  late final Database _db;

  /// assets から db ファイルを読み込む。
  Future<void> loadDb() async {
    final path = join(pokemonDbPath);
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

  /// [PokemonScheme] のリストを取得する。
  Future<List<PokemonScheme>> fetchPokemonList() async {
    // 図鑑番号が 1 から 50 までのポケモンを取得する。
    final pokemonMapList = await _db.query(
      PokemonScheme.tableName,
      where: 'pokedex <= ?',
      whereArgs: [50],
    );

    if (pokemonMapList.isEmpty) {
      throw Exception('ポケモンが存在しません。');
    }

    /// PokemonScheme に変換して返す。
    return pokemonMapList.map(PokemonScheme.fromJson).toList();
  }

  /// [pokedex] に合致するポケモンの [BaseStatsScheme] を取得する。
  Future<BaseStatsScheme> fetchBaseStats(int pokedex) async {
    final pokemonMapList = await _db.query(
      BaseStatsScheme.tableName,
      where: 'pokemonId = ?',
      whereArgs: [pokedex],
    );

    if (pokemonMapList.isEmpty) {
      throw Exception('pokedex: $pokedex の [BaseStatsScheme] が存在しません。');
    }

    /// BaseStatsScheme に変換して返す。
    return BaseStatsScheme.fromJson(pokemonMapList.first);
  }

  /// [pokedex] に合致するポケモンの [PokemonMoveScheme] のリストを取得する。
  Future<List<PokemonMoveScheme>> fetchPokemonMoveList(int pokedex) async {
    final pokemonMoveMapList = await _db.query(
      PokemonMoveScheme.tableName,
      where: 'pokemonId = ?',
      whereArgs: [pokedex],
    );

    if (pokemonMoveMapList.isEmpty) {
      throw Exception('pokedex: $pokedex の [PokemonMoveScheme] が存在しません。');
    }

    /// PokemonMoveScheme に変換して返す。
    return pokemonMoveMapList.map(PokemonMoveScheme.fromJson).toList();
  }

  /// [pokedex] に合致するポケモンの [PokemonAbilityScheme] のリストを取得する。
  Future<List<PokemonAbilityScheme>> fetchPokemonAbilityList(
    int pokedex,
  ) async {
    final pokemonAbilityMapList = await _db.query(
      PokemonAbilityScheme.tableName,
      where: 'pokemonId = ?',
      whereArgs: [pokedex],
    );

    if (pokemonAbilityMapList.isEmpty) {
      throw Exception('pokedex: $pokedex の [PokemonAbilityScheme] が存在しません。');
    }

    /// PokemonAbilityScheme に変換して返す。
    return pokemonAbilityMapList.map(PokemonAbilityScheme.fromJson).toList();
  }

  /// [pokedex] に合致するポケモンの [PokemonTypeScheme] のリストを取得する。
  Future<List<PokemonTypeScheme>> fetchPokemonTypeList(int pokedex) async {
    final pokemonTypeMapList = await _db.query(
      PokemonTypeScheme.tableName,
      where: 'pokemonId = ?',
      whereArgs: [pokedex],
    );

    if (pokemonTypeMapList.isEmpty) {
      throw Exception('pokedex: $pokedex の [PokemonTypeScheme] が存在しません。');
    }

    /// PokemonTypeScheme に変換して返す。
    return pokemonTypeMapList.map(PokemonTypeScheme.fromJson).toList();
  }
}
