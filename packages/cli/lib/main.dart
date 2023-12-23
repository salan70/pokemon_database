import 'package:cli/poke_api/poke_api_client.dart';

/// A Calculator.
class Calculator {
  Future<void> run() async {
    final client = PokeApiClient();

    final pokemonJaName = await client.fetchPokemonJapaneseName(1000);
    print('pokemonJaName: $pokemonJaName');
  }
}
