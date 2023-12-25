import 'package:flutter/services.dart';
import 'package:model/model.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

part 'pokemon_repository.g.dart';

@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) =>
    PokemonRepository();

/// ポケモンのデータを取得するためのリポジトリクラス。
///
/// インスタンス生成後、 [init] を呼び出して、データベースを初期化する必要がある。
class PokemonRepository {
  late final Database _pokemonDb;

  /// assets から db ファイルを取得し、データベースに書き込む。
  Future<void> init() async {
    final pokemonDbPath = await join('assets/db/pokemon.db');
    final pokemonDb = await rootBundle.load(pokemonDbPath);
    final pokemonDbBytes = pokemonDb.buffer.asUint8List();
    await databaseFactoryFfiWeb.writeDatabaseBytes(
        pokemonDbPath, pokemonDbBytes);

    _pokemonDb = await databaseFactoryFfiWeb.openDatabase(pokemonDbPath);
  }

  /// [PokemonScheme] を 取得する。
  Future<List<PokemonScheme>> fetchPokemonSchemeList() async {
    // 図鑑番号が 1 から 100 までのポケモンを取得する。
    final pokemonMapList = await _pokemonDb.query(
      PokemonScheme.tableName,
      where: 'pokedex <= ?',
      whereArgs: [100],
    );

    await _pokemonDb.close();

    /// PokemonScheme に変換して返す。
    return pokemonMapList.map((e) => PokemonScheme.fromJson(e)).toList();
  }
}
