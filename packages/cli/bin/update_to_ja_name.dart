import 'package:cli/use_case/update_to_ja_name/update_to_ja_name_use_case.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// 一部ポケモンの名前を日本語に更新する。
void main() async {
  const logPrefix = '[update_to_ja_name]';
  print('$logPrefix 処理を開始します🚀🚀🚀🚀');

  // sqflite を初期化する。
  sqfliteFfiInit();

  // データの取得と保存を行う。
  await UpdateToJaNameUseCase().execute();

  print('$logPrefix 全ての処理が完了しました🎉🎉🎉🎉');
}
