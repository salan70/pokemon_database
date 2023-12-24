import 'package:cli/service/ability_service.dart';
import 'package:cli/service/move_service.dart';
import 'package:cli/service/pokemon_service.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  print('処理を開始します🚀🚀🚀🚀');

  // sqflite を初期化する。
  sqfliteFfiInit();

  // データの取得と保存を行う。
  print('ポケモンデータの処理を開始します😎😎');
  await PokemonService().fetchAndSaveAllPokemonData();
  print('ポケモンデータの処理が完了しました🎉🎉');

  print('わざデータの処理を開始します😎😎');
  await MoveService().fetchAndSaveAllMoveData();
  print('わざデータの処理が完了しました🎉🎉');

  print('とくせいデータの処理を開始します😎😎');
  await AbilityService().fetchAndSaveAllAbilityData();
  print('とくせいデータの処理が完了しました🎉🎉');

  print('全ての処理が完了しました🎉🎉🎉🎉');
}
