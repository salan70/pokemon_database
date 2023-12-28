import 'package:model/model.dart';

import '../../poke_api/poke_api_client.dart';
import '../../sqflite/sqflite_command.dart';

/// 「とくせい」データを PokeAPI から取得し、 DB に保存する。
class FetchAndSaveAbilityUseCase {
  final List<AbilityScheme> _abilityList = [];

  /// 全ての ability のデータを取得し DB に保存する。
  Future<void> execute() async {
    final pokeApiClient = PokeApiClient();

    // * PokeAPI からデータを取得し _abilityList に追加する。
    final abilityUrlList = await pokeApiClient.fetchAbilityUrlList();
    for (final url in abilityUrlList) {
      // url から id を取得する。
      final index = int.parse(url.split('/')[6]);

      // 10000 以上は、特殊なとくせいなので除外する。
      if (index >= 10000) {
        print('index: $index は特殊なとくせいなので除外します。');
        continue;
      }

      final pokemonJson = await pokeApiClient.fetchAbility(index);
      final moveScheme = _generateAbilityScheme(pokemonJson);
      _abilityList.add(moveScheme);

      // 制限を避けるため 0.5 秒待つ。
      await Future<void>.delayed(const Duration(milliseconds: 500));

      // 厳密にいうと index は取得件数じゃないことに注意。
      print('$index / ${abilityUrlList.length} 個目のとくせいを取得しました。');
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
      orElse: () => null,
    ) as Map<String, dynamic>?;

    if (nameLanguageMap == null) {
      print('jaName が取得できなかったため、空文字を返します。');
      return '';
    }

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
      orElse: () => null,
    ) as Map<String, dynamic>?;

    if (descriptionLanguageMap == null) {
      print('description が取得できなかったため、空文字を返します。');
      return '';
    }

    final description = descriptionLanguageMap['flavor_text'] as String;
    return description;
  }
}
