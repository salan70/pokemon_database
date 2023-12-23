import 'dart:convert';

import 'package:http/http.dart' as http;

/// PokeAPI へのリクエストを行うクラス。
class PokeApiClient {
  static const String _pokeApiRoute = 'https://pokeapi.co/api/v2/';

  /// get リクエストを送信し、レスポンスを JSON に変換して返す。
  Future<Map<String, dynamic>> _getRequest(String url) async {
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return jsonDecode(res.body) as Map<String, dynamic>;
    } else {
      throw Exception(
        'Failed to Load. url: $url, statusCode: ${res.statusCode}',
      );
    }
  }

  /// ポケモンの数を取得する。
  Future<int> fetchPokemonCount() async {
    final json = await _getRequest('$_pokeApiRoute/pokemon');
    return json['count'] as int;
  }

  /// ポケモンを取得する。
  Future<Map<String, dynamic>> fetchPokemon(int id) async {
    return _getRequest('$_pokeApiRoute/pokemon/$id');
  }

  /// ポケモンの日本語の種族名を取得する。
  ///
  /// `fetchPokemon` では、日本語の種族名が取得できないため、この関数で取得する。
  Future<String> fetchPokemonJapaneseName(int id) async {
    final json = await _getRequest('$_pokeApiRoute/pokemon-species/$id');

    return ((json['names'] as List<dynamic>).firstWhere((e) {
      // e を変換。
      final mapFromE = e as Map<String, dynamic>;
      final language = mapFromE['language'] as Map<String, dynamic>;

      // 日本語の種族名を取得。
      return language['name'] == 'ja';
    }) as Map<String, dynamic>)['name'] as String;
  }

  /// 「わざ」の数を取得する。
  Future<int> fetchMoveCount() async {
    final json = await _getRequest('$_pokeApiRoute/move');
    return json['count'] as int;
  }

  /// 「わざ」の詳細情報を取得する。
  Future<Map<String, dynamic>> fetchMove(int id) async {
    return _getRequest('$_pokeApiRoute/move/$id');
  }

  /// 「とくせい」の数を取得する。
  Future<int> fetchAbilityCount() async {
    final json = await _getRequest('$_pokeApiRoute/ability');
    return json['count'] as int;
  }

  /// 「とくせい」の詳細情報を取得する。
  Future<Map<String, dynamic>> fetchAbility(int id) async {
    return _getRequest('$_pokeApiRoute/ability/$id');
  }
}
