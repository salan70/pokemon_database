import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'db_state.dart';

part 'pokemon_repository.g.dart';

/// [PokemonRepository] を保持する provider.
@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) =>
    PokemonRepository(ref);

/// ポケモンのデータを取得するためのリポジトリクラス。
class PokemonRepository {
  PokemonRepository(this._ref);

  final Ref _ref;

  /// [PokemonScheme] のリストを取得する。
  Future<List<PokemonScheme>> fetchPokemonList() async {
    final db = await _ref.read(dbProvider(pokemonDb).future);

    // 図鑑番号が 1 から 50 までのポケモンを取得する。
    final pokemonMapList = await db.query(
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
    final db = await _ref.read(dbProvider(pokemonDb).future);
    final pokemonMapList = await db.query(
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
    final db = await _ref.read(dbProvider(pokemonDb).future);
    final pokemonMoveMapList = await db.query(
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
    final db = await _ref.read(dbProvider(pokemonDb).future);
    final pokemonAbilityMapList = await db.query(
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
    final db = await _ref.read(dbProvider(pokemonDb).future);
    final pokemonTypeMapList = await db.query(
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
