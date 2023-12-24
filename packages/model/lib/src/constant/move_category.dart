/// 「わざ」の種類。
enum MoveCategory {
  physical(
    enLabel: 'physical',
    jaLabel: 'ぶつり',
  ),
  special(
    enLabel: 'special',
    jaLabel: 'とくしゅ',
  ),
  status(
    enLabel: 'status',
    jaLabel: 'へんか',
  );

  /// 英語のラベル。
  final String enLabel;

  /// 日本語のラベル。
  final String jaLabel;

  const MoveCategory({
    required this.enLabel,
    required this.jaLabel,
  });
}
