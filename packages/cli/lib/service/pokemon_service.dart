import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';
import '../sqflite/sqflite_command.dart';

class PokemonService {
  // PokeAPI で取得したデータを DB に保存するために一時的に保持するリスト。
  // 大量のデータを保持する恐れがある。
  final List<PokemonScheme> _pokemonList = [];
  final List<BaseStatsScheme> _baseStatsList = [];
  final List<PokemonAbilityScheme> _pokemonAbilityList = [];
  final List<PokemonMoveScheme> _pokemonMoveList = [];
  final List<PokemonTypeScheme> _pokemonTypeList = [];

  /// 全てのポケモンのデータを取得し、 DB に保存する。
  Future<void> fetchAndSaveAllPokemonData() async {
    final pokeApiClient = PokeApiClient();

    // * PokeAPI からデータを取得し、メンバ変数のリストに追加する。
    final pokemonUrlList = await pokeApiClient.fetchPokemonUrlList();
    for (final url in pokemonUrlList) {
      // url から pokedex を取得する。
      final index = int.parse(url.split('/')[6]);

      // 10000 以上は、特殊なポケモンなので除外する。
      if (index >= 10000) {
        print('index: $index は特殊なポケモンなので除外します。');
        continue;
      }

      final pokemonJson = await pokeApiClient.fetchPokemon(index);
      final pokemonJaName = await pokeApiClient.fetchPokemonJapaneseName(index);
      _generateAndAddToList(pokemonJson, pokemonJaName);

      // 制限を避けるため、 0.5 秒待つ。
      await Future<void>.delayed(const Duration(milliseconds: 500));

      // 厳密にいうと index は取得件数じゃないことに注意。
      print('$index / ${pokemonUrlList.length} 匹目のポケモンを取得しました。');
    }

    // * DB にデータを保存する。
    await SqfliteCommand().savePokemonData(
      pokemonList: _pokemonList,
      baseStatsList: _baseStatsList,
      pokemonAbilityList: _pokemonAbilityList,
      pokemonMoveList: _pokemonMoveList,
      pokemonTypeList: _pokemonTypeList,
    );
  }

  /// PokeAPI で取得したデータから各スキーマ（ model ）を生成し、
  /// メンバ変数で保持しているリストに追加する。
  void _generateAndAddToList(
    Map<String, dynamic> pokemonJson,
    String pokemonJaName,
  ) {
    final converter = _Generator(pokemonJson);

    _pokemonList.add(converter.generatePokemonScheme(pokemonJaName));
    _pokemonAbilityList.addAll(converter.generatePokemonAbilityScheme());
    _pokemonMoveList.addAll(converter.generatePokemonMoveScheme());
    _pokemonTypeList.addAll(converter.generatePokemonTypeScheme());
    _baseStatsList.add(converter.generateBaseStatsScheme());
  }
}

/// PokeAPI で取得したデータから各スキーマ（ model ）を生成するためのクラス。
class _Generator {
  _Generator(this._pokemonJson);

  final Map<String, dynamic> _pokemonJson;

  /// [_pokemonJson] から [PokemonScheme] を生成する。
  PokemonScheme generatePokemonScheme(String pokemonJaName) {
    return PokemonScheme(
      pokedex: _pokemonJson['id'] as int,
      name: pokemonJaName,
      imageUrl: (_pokemonJson['sprites']
          as Map<String, dynamic>)['front_default'] as String?,
    );
  }

  /// [_pokemonJson] から [PokemonAbilityScheme] を生成する。
  List<PokemonAbilityScheme> generatePokemonAbilityScheme() {
    final pokedex = _pokemonJson['id'] as int;
    final abilities = _pokemonJson['abilities'] as List<dynamic>;

    final pokemonAbilityList = abilities.map((e) {
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
    // 重複を削除したリストを生成する。
    final uniqueList = pokemonAbilityList.toSet().toList();

    return uniqueList;
  }

  /// [_pokemonJson] から [PokemonMoveScheme] を生成する。
  List<PokemonMoveScheme> generatePokemonMoveScheme() {
    final pokedex = _pokemonJson['id'] as int;
    final moves = _pokemonJson['moves'] as List<dynamic>;

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
    // 重複を削除したリストを生成する。
    final uniqueList = moveList.toSet().toList();

    return uniqueList;
  }

  /// [_pokemonJson] から [PokemonTypeScheme] を生成する。
  List<PokemonTypeScheme> generatePokemonTypeScheme() {
    final pokedex = _pokemonJson['id'] as int;
    final types = _pokemonJson['types'] as List<dynamic>;

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
    // 重複を削除したリストを生成する。
    final uniqueList = typeList.toSet().toList();

    return uniqueList;
  }

  /// [_pokemonJson] から [BaseStatsScheme] を生成する。
  BaseStatsScheme generateBaseStatsScheme() {
    final pokedex = _pokemonJson['id'] as int;
    final stats = _pokemonJson['stats'] as List<dynamic>;

    // 種族値は、hp, attack, defense, specialAttack,
    // specialDefense, speed の順に並んでいる。
    final baseStatsList = stats.map((e) {
      final eMap = e as Map<String, dynamic>;
      return eMap['base_stat'] as int;
    }).toList();

    return BaseStatsScheme(
      pokemonId: pokedex,
      hp: baseStatsList[0],
      attack: baseStatsList[1],
      defense: baseStatsList[2],
      specialAttack: baseStatsList[3],
      specialDefense: baseStatsList[4],
      speed: baseStatsList[5],
    );
  }
}
