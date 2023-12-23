import 'package:model/model.dart';

import '../poke_api/poke_api_client.dart';

class PokemonService {
  final _pokeApiClient = PokeApiClient();

  Future<PokemonScheme> fetchPokemon(int pokedex) async {
    // PokeAPI からデータを取得する。
    final pokemonJson = await _pokeApiClient.fetchPokemon(pokedex);
    final pokemonJaName =
        await _pokeApiClient.fetchPokemonJapaneseName(pokedex);

    // 取得したデータを PokemonScheme に変換する。
    return PokemonScheme(
      pokedex: pokemonJson['id'] as int,
      name: pokemonJaName,
      imageUrl: (pokemonJson['sprites']
          as Map<String, dynamic>)['front_default'] as String,
    );
  }
}
