/// ポケモンにおけるタイプ。
enum PokeType {
  normal(label: 'ノーマル', iconUrl: 'assets/images/type/normal.png'),
  fire(label: 'ほのお', iconUrl: 'assets/images/type/fire.png'),
  water(label: 'みず', iconUrl: 'assets/images/type/water.png'),
  electric(label: 'でんき', iconUrl: 'assets/images/type/electric.png'),
  grass(label: 'くさ', iconUrl: 'assets/images/type/grass.png'),
  ice(label: 'こおり', iconUrl: 'assets/images/type/ice.png'),
  fighting(label: 'かくとう', iconUrl: 'assets/images/type/fighting.png'),
  poison(label: 'どく', iconUrl: 'assets/images/type/poison.png'),
  ground(label: 'じめん', iconUrl: 'assets/images/type/ground.png'),
  flying(label: 'ひこう', iconUrl: 'assets/images/type/flying.png'),
  psychic(label: 'エスパー', iconUrl: 'assets/images/type/psychic.png'),
  bug(label: 'むし', iconUrl: 'assets/images/type/bug.png'),
  rock(label: 'いわ', iconUrl: 'assets/images/type/rock.png'),
  ghost(label: 'ゴースト', iconUrl: 'assets/images/type/ghost.png'),
  dragon(label: 'ドラゴン', iconUrl: 'assets/images/type/dragon.png'),
  dark(label: 'あく', iconUrl: 'assets/images/type/dark.png'),
  steel(label: 'はがね', iconUrl: 'assets/images/type/steel.png'),
  fairy(label: 'フェアリー', iconUrl: 'assets/images/type/fairy.png');

  /// 日本語のラベル。
  final String label;

  /// アイコンの URL.
  final String iconUrl;

  const PokeType({
    required this.label,
    required this.iconUrl,
  });
}
