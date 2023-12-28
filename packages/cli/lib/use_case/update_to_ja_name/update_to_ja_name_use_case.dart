import '../../sqflite/sqflite_command.dart';

/// 一部ポケモンの名前を日本語に更新する。
class UpdateToJaNameUseCase {
  /// 更新対象のポケモンの図鑑番号と日本語の Map。
  static const Map<int, String> _targetPokemonMap = {
    10272: '赫月ガチグマ',
    10227: '水ウーラオス',
    10021: 'ランドロス',
    10104: 'アローラキュウコン',
    10009: '水ロトム',
    10242: 'ヒスイヌメルゴン',
    10230: 'ヒスイウインディ',
    10008: '火ロトム',
    10239: 'ヒスイゾロアーク',
    10020: 'ボルトロス',
    10236: 'ヒスイダイケンキ',
    10251: 'ケンタロス',
    10248: 'イダイトウ',
    10172: 'ガラルヤドキング',
    10152: '黄昏ルガルガン',
    10170: 'ガラルサンダー',
    10167: 'ガラルマタドガス',
    10171: 'ガラルファイヤー',
  };

  /// [_targetPokemonMap] をもとに、ポケモンの名前を更新する。
  Future<void> execute() async {
    await SqfliteCommand().updatePokemonNames(_targetPokemonMap);
  }
}
