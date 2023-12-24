import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';
import '../sqflite/sqflite_command.dart';

class MoveService {
  final _moveList = <MoveScheme>[];

  /// 全ての move のデータを取得し、 DB に保存する。
  Future<void> fetchAndSaveAllMoveData() async {
    final pokeApiClient = PokeApiClient();

    // * PokeAPI からデータを取得し、_moveList に追加する。
    final moveUrlList = await pokeApiClient.fetchMoveUrlList();
    for (final url in moveUrlList) {
      // url から id を取得する。
      final index = int.parse(url.split('/')[6]);

      // 10000 以上は、特殊なわざなので除外する。
      if (index >= 10000) {
        print('index: $index は特殊なわざなので除外します。');
        continue;
      }

      final pokemonJson = await pokeApiClient.fetchMove(index);
      final moveScheme = _generateMoveScheme(pokemonJson);
      _moveList.add(moveScheme);

      // 制限を避けるため、 0.5 秒待つ。
      await Future<void>.delayed(const Duration(milliseconds: 500));

      // 厳密にいうと index は取得件数じゃないことに注意。
      print('$index / ${moveUrlList.length} 個目のわざを取得しました。');
    }

    // * DB に保存する。
    await SqfliteCommand().saveMoveData(_moveList);
  }

  /// PokeAPI で取得したデータから [MoveScheme] を生成する。
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
      accuracy: moveJson['accuracy'] as int?,
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
      orElse: () => null,
    ) as Map<String, dynamic>?;

    if (descriptionLanguageMap == null) {
      print('description が取得できなかったため、空文字を返します。');
      return '';
    }

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
      orElse: () => null,
    ) as Map<String, dynamic>?;

    if (nameLanguageMap == null) {
      print('jaName が取得できなかったため、空文字を返します。');
      return '';
    }

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
