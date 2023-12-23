// ignore_for_file: unused_local_variable
// TODO(me): todo スキーマ（ model ）を DB に保存したら、上記コメントを削除する。

import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';

class PokemonService {
  final _pokeApiClient = PokeApiClient();

  /// 全てのポケモンのデータを取得し、 DB に保存する。
  Future<void> fetchAndSaveAllPokemonData() async {
    final pokemonCount = await _pokeApiClient.fetchPokemonCount();
    for (var i = 1; i <= pokemonCount; i++) {
      await _fetchAndSavePokemonData(i);
      // 制限を避けるため、 0.5 秒待つ。
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
  }

  /// pokemon に関するデータの取得、加工、保存を行う。
  Future<void> _fetchAndSavePokemonData(int pokedex) async {
    // * PokeAPI からデータを取得する。
    final pokemonJson = await _pokeApiClient.fetchPokemon(pokedex);
    final pokemonJaName =
        await _pokeApiClient.fetchPokemonJapaneseName(pokedex);

    // * 取得したデータをもとに、スキーマ（ model ）を生成する。
    final pokemonScheme = _generatePokemonScheme(pokemonJson, pokemonJaName);
    final baseStatsSchemeList = _generateBaseStatsScheme(pokemonJson);
    final pokemonAbilitySchemeList = _generatePokemonAbilityScheme(pokemonJson);
    final pokemonMoveSchemeList = _generatePokemonMoveScheme(pokemonJson);
    final pokemonTypeSchemeList = _generatePokemonTypeScheme(pokemonJson);

    // TODO(me): todo スキーマ（ model ）を DB に保存する。
  }

  /// PokeAPI から取得したデータ（[pokemonJson], [pokemonJaName]）をもとに、
  ///  [PokemonScheme] を生成する。
  PokemonScheme _generatePokemonScheme(
    Map<String, dynamic> pokemonJson,
    String pokemonJaName,
  ) {
    return PokemonScheme(
      pokedex: pokemonJson['id'] as int,
      name: pokemonJaName,
      imageUrl: (pokemonJson['sprites']
          as Map<String, dynamic>)['front_default'] as String,
    );
  }

  List<PokemonAbilityScheme> _generatePokemonAbilityScheme(
    Map<String, dynamic> pokemonJson,
  ) {
    final pokedex = pokemonJson['id'] as int;
    final abilities = pokemonJson['abilities'] as List<dynamic>;

    final abilityList = abilities.map((e) {
      final eMap = e as Map<String, dynamic>;
      // abilityId を取得するために、 abilityUrl を取得する。
      final abilityUrl =
          (eMap['ability'] as Map<String, dynamic>)['url'] as String;

      // abilityUrl から abilityId を取得する。
      //
      // 例: https://pokeapi.co/api/v2/ability/34/
      // から 34 を取得する。
      // 強引なため、検討の余地あり。
      final abilityId = int.parse(abilityUrl.split('/')[6]);

      return PokemonAbilityScheme(
        pokemonId: pokedex,
        abilityId: abilityId,
      );
    }).toList();

    // abilityId が重複しているものを削除して返す。
    return abilityList.toSet().toList();
  }

  List<PokemonMoveScheme> _generatePokemonMoveScheme(
    Map<String, dynamic> pokemonJson,
  ) {
    final pokedex = pokemonJson['id'] as int;
    final moves = pokemonJson['moves'] as List<dynamic>;

    final moveList = moves.map((e) {
      final eMap = e as Map<String, dynamic>;
      // moveId を取得するために、 moveUrl を取得する。
      final moveUrl = (eMap['move'] as Map<String, dynamic>)['url'] as String;

      // moveUrl から moveId を取得する。
      //
      // 例: https://pokeapi.co/api/v2/move/34/
      // から 34 を取得する。
      // 強引なため、検討の余地あり。
      final moveId = int.parse(moveUrl.split('/')[6]);

      return PokemonMoveScheme(
        pokemonId: pokedex,
        moveId: moveId,
      );
    }).toList();

    // moveId が重複しているものを削除して返す。
    return moveList.toSet().toList();
  }

  List<BaseStatsScheme> _generateBaseStatsScheme(
    Map<String, dynamic> pokemonJson,
  ) {
    final pokedex = pokemonJson['id'] as int;
    final stats = pokemonJson['stats'] as List<dynamic>;

    // 種族値は、hp, attack, defense, special-attack,
    // special-defense, speed の順に並んでいる。
    final baseStatsList = stats.map((e) {
      final eMap = e as Map<String, dynamic>;
      return eMap['base_stat'] as int;
    }).toList();

    return [
      BaseStatsScheme(
        pokemonId: pokedex,
        hp: baseStatsList[0],
        attack: baseStatsList[1],
        defense: baseStatsList[2],
        specialAttack: baseStatsList[3],
        specialDefense: baseStatsList[4],
        speed: baseStatsList[5],
      ),
    ];
  }

  List<PokemonTypeScheme> _generatePokemonTypeScheme(
    Map<String, dynamic> pokemonJson,
  ) {
    final pokedex = pokemonJson['id'] as int;
    final types = pokemonJson['types'] as List<dynamic>;

    final typeList = <PokemonTypeScheme>[];
    for (final e in types) {
      final eMap = e as Map<String, dynamic>;
      final typeName = (eMap['type'] as Map<String, dynamic>)['name'] as String;

      // unknown と shadow は除外する。
      if (typeName == 'unknown' || typeName == 'shadow') {
        continue;
      }

      // name から PokeType を判別する。
      final type =
          PokeType.values.firstWhere((element) => element.enLabel == typeName);

      typeList.add(
        PokemonTypeScheme(
          pokemonId: pokedex,
          type: type,
        ),
      );
    }

    // 重複しているものを削除して返す。
    return typeList.toSet().toList();
  }
}
