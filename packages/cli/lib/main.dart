import 'service/ability_service.dart';

/// A Calculator.
class Calculator {
  Future<void> run() async {
    // await PokemonService().fetchAndSavePokemonData(1000);
    // await MoveService().fetchAndSaveMoveData(100);
    await AbilityService().fetchAndSaveAbilityData(100);
  }
}
