import 'package:cli/use_case/fetch_and_save/fetch_and_save_ability_use_case.dart';
import 'package:cli/use_case/fetch_and_save/fetch_and_save_move_use_case.dart';
import 'package:cli/use_case/fetch_and_save/fetch_and_save_pokemon_use_case.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// PokeAPI から「ポケモン」「わざ」「とくせい」のデータを取得し DB に保存する。
void main() async {
  const logPrefix = '[fetch_and_save]';
  print('$logPrefix 処理を開始します🚀🚀🚀🚀');

  // sqflite を初期化する。
  sqfliteFfiInit();

  // データの取得と保存を行う。
  print('$logPrefix ポケモンデータの処理を開始します😎😎');
  await FetchAndSavePokemonUseCase().execute();
  print('$logPrefix ポケモンデータの処理が完了しました🎉🎉');

  print('$logPrefix わざデータの処理を開始します😎😎');
  await FetchAndSaveMoveUseCase().execute();
  print('$logPrefix わざデータの処理が完了しました🎉🎉');

  print('$logPrefix とくせいデータの処理を開始します😎😎');
  await FetchAndSaveAbilityUseCase().execute();
  print('$logPrefix とくせいデータの処理が完了しました🎉🎉');

  print('$logPrefix 全ての処理が完了しました🎉🎉🎉🎉');
}
