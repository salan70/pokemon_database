import 'package:model/model.dart';

extension PokemonSchemeConverter on PokemonScheme {
  /// PokeAPI から取得した JSON を [PokemonScheme] に変換する。
  static PokemonScheme fromPokeApiJson(Map<String, dynamic> json) {
    return PokemonScheme(
      pokedex: json['pokedex'] as int,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }
}
