import 'package:app/domain/base_stats.dart';
import 'package:app/repository/ability_repository.dart';
import 'package:app/repository/pokemon_repository.dart';
import 'package:model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/ability.dart';
import '../domain/pokemon.dart';

part 'pokemon_list_state.g.dart';

@riverpod
Future<List<Pokemon>> pokemonList(PokemonListRef ref) async {
  final pokemonRepository = await ref.watch(pokemonRepositoryProvider.future);
  final pokemonList = <Pokemon>[];

  final pokemonSchemeList = await pokemonRepository.fetchPokemonList();
  for (final pokemonScheme in pokemonSchemeList) {
    final pokedex = pokemonScheme.pokedex;

    // 必要なデータを取得する。
    final typeList = await _fetchTypeListFromPokedex(pokedex, ref);
    final abilityList = await _fetchAbilityListFromPokedex(pokedex, ref);
    final moveIdList = <int>[];
    // この処理は時間がかかる かつ 重要度が低いのでコメントアウトしておく。
    // await _fetchMoveIdListFromPokedex(pokedex, ref);
    final baseStats = await _fetchBaseStats(pokedex, ref);

    final pokemon = Pokemon(
      pokedex: pokedex,
      name: pokemonScheme.name,
      imageUrl: pokemonScheme.imageUrl,
      typeList: typeList,
      abilityList: abilityList,
      moveIdList: moveIdList,
      baseStats: baseStats,
    );

    pokemonList.add(pokemon);
  }

  return pokemonList;
}

/// [pokedex] に合致するポケモンの「タイプ」のリストを取得する。
Future<List<PokeType>> _fetchTypeListFromPokedex(
  int pokedex,
  PokemonListRef ref,
) async {
  final pokemonRepository = await ref.watch(pokemonRepositoryProvider.future);
  final pokemonTypeSchemeList =
      await pokemonRepository.fetchPokemonTypeList(pokedex);

  return pokemonTypeSchemeList.map((e) => e.type).toList();
}

/// [pokedex] に合致するポケモンが持ちうる「とくせい」のリストを取得する。
Future<List<Ability>> _fetchAbilityListFromPokedex(
  int pokedex,
  PokemonListRef ref,
) async {
  // とくせいの id リストを取得する。
  final pokemonRepository = await ref.watch(pokemonRepositoryProvider.future);
  final pokemonAbilitySchemeList =
      await pokemonRepository.fetchPokemonAbilityList(pokedex);
  final abilityIdList =
      pokemonAbilitySchemeList.map((e) => e.abilityId).toList();

  // とくせいのリストを取得する。
  final abilityRepository = await ref.read(abilityRepositoryProvider.future);
  final abilitySchemeList =
      await abilityRepository.fetchAbilitySchemeList(abilityIdList);

  return abilitySchemeList.map(Ability.fromScheme).toList();
}

/// [pokedex] に合致するポケモンが覚える「わざ」の id リストを取得する。
// Future<List<int>> _fetchMoveIdListFromPokedex(
//   int pokedex,
//   PokemonListRef ref,
// ) async {
//   final pokemonMoveSchemeList =
//       await pokemonRepository.fetchPokemonMoveList(pokedex);

//   return pokemonMoveSchemeList.map((e) => e.moveId).toList();
// }

/// [pokedex] に合致するポケモンの種族値を取得する。
Future<BaseStats> _fetchBaseStats(
  int pokedex,
  PokemonListRef ref,
) async {
  final pokemonRepository = await ref.watch(pokemonRepositoryProvider.future);
  final baseStatsScheme = await pokemonRepository.fetchBaseStats(pokedex);

  return BaseStats.fromScheme(baseStatsScheme);
}
