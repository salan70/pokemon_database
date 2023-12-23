import 'service/ability_service.dart';
import 'service/move_service.dart';
import 'service/pokemon_service.dart';

/// A Calculator.
class Calculator {
  Future<void> run() async {
    await PokemonService().fetchAndSaveAllPokemonData();
    await MoveService().fetchAndSaveAllMoveData();
    await AbilityService().fetchAndSaveAllAbilityData();
  }
}
