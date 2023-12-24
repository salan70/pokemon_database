import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'service/pokemon_service.dart';

/// A Calculator.
class Calculator {
  Future<void> run() async {
    // sqflite の初期化。
    sqfliteFfiInit();

    await PokemonService().fetchAndSaveAllPokemonData();
    // await MoveService().fetchAndSaveAllMoveData();
    // await AbilityService().fetchAndSaveAllAbilityData();
  }
}
