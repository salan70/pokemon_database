/// ポケモンにおけるタイプ。
enum PokeType {
  normal(
    enLabel: 'normal',
    jaLabel: 'ノーマル',
    iconUrl: 'assets/images/type/normal.png',
  ),
  fire(
    enLabel: 'fire',
    jaLabel: 'ほのお',
    iconUrl: 'assets/images/type/fire.png',
  ),
  water(
    enLabel: 'water',
    jaLabel: 'みず',
    iconUrl: 'assets/images/type/water.png',
  ),
  electric(
    enLabel: 'electric',
    jaLabel: 'でんき',
    iconUrl: 'assets/images/type/electric.png',
  ),
  grass(
    enLabel: 'grass',
    jaLabel: 'くさ',
    iconUrl: 'assets/images/type/grass.png',
  ),
  ice(
    enLabel: 'ice',
    jaLabel: 'こおり',
    iconUrl: 'assets/images/type/ice.png',
  ),
  fighting(
    enLabel: 'fighting',
    jaLabel: 'かくとう',
    iconUrl: 'assets/images/type/fighting.png',
  ),
  poison(
    enLabel: 'poison',
    jaLabel: 'どく',
    iconUrl: 'assets/images/type/poison.png',
  ),
  ground(
    enLabel: 'ground',
    jaLabel: 'じめん',
    iconUrl: 'assets/images/type/ground.png',
  ),
  flying(
    enLabel: 'flying',
    jaLabel: 'ひこう',
    iconUrl: 'assets/images/type/flying.png',
  ),
  psychic(
    enLabel: 'psychic',
    jaLabel: 'エスパー',
    iconUrl: 'assets/images/type/psychic.png',
  ),
  bug(
    enLabel: 'bug',
    jaLabel: 'むし',
    iconUrl: 'assets/images/type/bug.png',
  ),
  rock(
    enLabel: 'rock',
    jaLabel: 'いわ',
    iconUrl: 'assets/images/type/rock.png',
  ),
  ghost(
    enLabel: 'ghost',
    jaLabel: 'ゴースト',
    iconUrl: 'assets/images/type/ghost.png',
  ),
  dragon(
    enLabel: 'dragon',
    jaLabel: 'ドラゴン',
    iconUrl: 'assets/images/type/dragon.png',
  ),
  dark(
    enLabel: 'dark',
    jaLabel: 'あく',
    iconUrl: 'assets/images/type/dark.png',
  ),
  steel(
    enLabel: 'steel',
    jaLabel: 'はがね',
    iconUrl: 'assets/images/type/steel.png',
  ),
  fairy(
    enLabel: 'fairy',
    jaLabel: 'フェアリー',
    iconUrl: 'assets/images/type/fairy.png',
  );
  
  /// 英語のラベル。
  final String enLabel;

  /// 日本語のラベル。
  final String jaLabel;

  /// アイコンの URL.
  final String iconUrl;

  const PokeType({
    required this.enLabel,
    required this.jaLabel,
    required this.iconUrl,
  });
}
