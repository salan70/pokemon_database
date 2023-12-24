import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';
import '../sqflite/sqflite_command.dart';

class AbilityService {
  final _pokeApiClient = PokeApiClient();

  final List<AbilityScheme> _abilityList = [];

  /// 全ての ability のデータを取得し DB に保存する。
  Future<void> fetchAndSaveAllAbilityData() async {
    // * PokeAPI からデータを取得し _abilityList に追加する。
    final abilityCount = await _pokeApiClient.fetchAbilityCount();

    // TODO: debug 終わったら、 abilityCount の数だけ取得するようにする。
    for (var index = 1; index <= 5; index++) {
      final pokemonJson = await _pokeApiClient.fetchAbility(index);
      final moveScheme = _generateAbilityScheme(pokemonJson);
      _abilityList.add(moveScheme);

      // 制限を避けるため 0.5 秒待つ。
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }

    // * DB に保存する。
    await SqfliteCommand().saveAbilityData(_abilityList);
  }

  /// PokeAPI で取得したデータから [AbilityScheme] を生成する。
  AbilityScheme _generateAbilityScheme(
    Map<String, dynamic> abilityJson,
  ) {
    return AbilityScheme(
      id: abilityJson['id'] as int,
      name: _findJaName(abilityJson),
      description: _findJaDescription(abilityJson),
    );
  }

  String _findJaName(Map<String, dynamic> abilityJson) {
    final nameLanguageMap = (abilityJson['names'] as List<dynamic>).firstWhere(
      (e) {
        final nameData = e as Map<String, dynamic>;
        final language = nameData['language'] as Map<String, dynamic>;
        return language['name'] == 'ja';
      },
      orElse: () => throw Exception('name が取得できませんでした。'),
    ) as Map<String, dynamic>;
    final name = nameLanguageMap['name'] as String;
    return name;
  }

  String _findJaDescription(Map<String, dynamic> abilityJson) {
    final descriptionLanguageMap =
        (abilityJson['flavor_text_entries'] as List<dynamic>).firstWhere(
      (e) {
        final nameData = e as Map<String, dynamic>;
        final language = nameData['language'] as Map<String, dynamic>;
        return language['name'] == 'ja';
      },
      orElse: () => throw Exception('description が取得できませんでした。'),
    ) as Map<String, dynamic>;
    final description = descriptionLanguageMap['flavor_text'] as String;
    return description;
  }
}
