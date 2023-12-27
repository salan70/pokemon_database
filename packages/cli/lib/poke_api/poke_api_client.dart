import 'dart:convert';

import 'package:cli/util/exception/api_exception.dart';
import 'package:http/http.dart' as http;

/// PokeAPI へのリクエストを行うクラス。
class PokeApiClient {
  static const String _pokeApiRoute = 'https://pokeapi.co/api/v2/';

  /// get リクエストを送信し、レスポンスを JSON に変換して返す。
  Future<Map<String, dynamic>> _getRequest(String url) async {
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return jsonDecode(res.body) as Map<String, dynamic>;
    } else if (res.statusCode == 404) {
      print('404: $url');
      throw const ApiException(ApiExceptionCode.notFound);
    }
    print('status code: ${res.statusCode}');
    print('url: $url');
    throw const ApiException(ApiExceptionCode.unknown);
  }

  /// 取得するポケモンの URL リストを取得する。
  Future<List<String>> fetchPokemonUrlList() async {
    final json =
        await _getRequest('$_pokeApiRoute/pokemon?limit=2000&offset=0');
    final results = json['results'] as List<dynamic>;
    return results.map((e) {
      final eMap = e as Map<String, dynamic>;
      return eMap['url'] as String;
    }).toList();
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

  /// 取得する「わざ」の URL リストを取得する。
  Future<List<String>> fetchMoveUrlList() async {
    final json = await _getRequest('$_pokeApiRoute/move?limit=2000&offset=0');
    final results = json['results'] as List<dynamic>;
    return results.map((e) {
      final eMap = e as Map<String, dynamic>;
      return eMap['url'] as String;
    }).toList();
  }

  /// 「わざ」の詳細情報を取得する。
  Future<Map<String, dynamic>> fetchMove(int id) async {
    return _getRequest('$_pokeApiRoute/move/$id');
  }

  /// 取得する「とくせい」の URL リストを取得する。
  Future<List<String>> fetchAbilityUrlList() async {
    final json =
        await _getRequest('$_pokeApiRoute/ability?limit=2000&offset=0');
    final results = json['results'] as List<dynamic>;
    return results.map((e) {
      final eMap = e as Map<String, dynamic>;
      return eMap['url'] as String;
    }).toList();
  }

  /// 「とくせい」の詳細情報を取得する。
  Future<Map<String, dynamic>> fetchAbility(int id) async {
    return _getRequest('$_pokeApiRoute/ability/$id');
  }
}
