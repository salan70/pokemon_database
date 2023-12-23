import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';

class MoveService {
  final _pokeApiClient = PokeApiClient();

  /// move に関するデータの取得、加工、保存を行う。
  Future<void> fetchAndSaveMoveData(int moveIndex) async {
    // * PokeAPI からデータを取得する。
    final pokemonJson = await _pokeApiClient.fetchMove(moveIndex);

    // * 取得したデータをもとに、スキーマ（ model ）を生成する。
    final moveScheme = _generateMoveScheme(pokemonJson);

    // TODO(me): todo スキーマ（ model ）を DB に保存する。
  }

  /// PokeAPI から取得したデータ（[moveJson]）をもとに、[MoveScheme] を生成する。
  MoveScheme _generateMoveScheme(
    Map<String, dynamic> moveJson,
  ) {
    // name （日本語） を取得する。
    final name = _findJaName(moveJson);

    // description （説明文） を取得する。
    final description = _findJaDescription(moveJson);

    // category を取得する。
    final category = _moveCategoryFromJson(moveJson);

    // type を取得する。
    final type = _pokeTypeFromJson(moveJson);

    return MoveScheme(
      id: moveJson['id'] as int,
      name: name,
      type: type,
      description: description,
      category: category,
      power: moveJson['power'] as int?,
      accuracy: moveJson['accuracy'] as double?,
      pp: moveJson['pp'] as int,
    );
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

  String _findJaName(Map<String, dynamic> moveJson) {
    final nameLanguageMap = (moveJson['names'] as List<dynamic>).firstWhere(
      (e) {
        final nameData = e as Map<String, dynamic>;
        final language = nameData['language'] as Map<String, dynamic>;
        return language['name'] == 'ja';
      },
      orElse: () => throw Exception('jaName が取得できませんでした。'),
    ) as Map<String, dynamic>;
    final name = nameLanguageMap['name'] as String;
    return name;
  }

  MoveCategory _moveCategoryFromJson(Map<String, dynamic> moveJson) {
    final moveCategoryMap = moveJson['damage_class'] as Map<String, dynamic>;
    final moveCategoryName = moveCategoryMap['name'] as String;
    switch (moveCategoryName) {
      case 'status':
        return MoveCategory.status;
      case 'physical':
        return MoveCategory.physical;
      case 'special':
        return MoveCategory.special;
      default:
        throw Exception('moveCategoryName が想定外です。');
    }
  }

  PokeType _pokeTypeFromJson(Map<String, dynamic> moveJson) {
    final typeName =
        (moveJson['type'] as Map<String, dynamic>)['name'] as String;
    final type =
        PokeType.values.firstWhere((element) => element.enLabel == typeName);
    return type;
  }
}
