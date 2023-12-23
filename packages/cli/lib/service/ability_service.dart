import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';

class AbilityService {
  final _pokeApiClient = PokeApiClient();

  /// move に関するデータの取得、加工、保存を行う。
  Future<void> fetchAndSaveAbilityData(int moveIndex) async {
    // * PokeAPI からデータを取得する。
    final pokemonJson = await _pokeApiClient.fetchAbility(moveIndex);

    // * 取得したデータをもとに、スキーマ（ model ）を生成する。
    final moveScheme = _generateAbilityScheme(pokemonJson);

    // TODO(me): todo スキーマ（ model ）を DB に保存する。
  }

  /// PokeAPI から取得したデータ（[moveJson]）をもとに、[MoveScheme] を生成する。
  AbilityScheme _generateAbilityScheme(
    Map<String, dynamic> moveJson,
  ) {
    return AbilityScheme(
      id: moveJson['id'] as int,
      name: _findJaName(moveJson),
      description: _findJaDescription(moveJson),
    );
  }

  String _findJaName(Map<String, dynamic> moveJson) {
    final nameLanguageMap = (moveJson['names'] as List<dynamic>).firstWhere(
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

  String _findJaDescription(Map<String, dynamic> moveJson) {
    final descriptionLanguageMap =
        (moveJson['flavor_text_entries'] as List<dynamic>).firstWhere(
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
