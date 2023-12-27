import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon.dart';

part 'selected_pokemon.freezed.dart';

@freezed
class SelectedPokemon with _$SelectedPokemon {
  const factory SelectedPokemon({
    required List<Pokemon> redPokemonList,
    required List<Pokemon> bluePokemonList,
  }) = _SelectedPokemon;

  /// 1チームに登録できるポケモンの最大数。
  static const maxPokemonCount = 6;
}
