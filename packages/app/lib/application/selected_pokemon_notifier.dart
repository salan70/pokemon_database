import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/pokemon.dart';
import '../domain/selected_pokemon.dart';
import '../util/constant/selected_pokemon_list_type.dart';

part 'selected_pokemon_notifier.g.dart';

/// 選択中のポケモンを管理する notifier.
@riverpod
class SelectedPokemonNotifier extends _$SelectedPokemonNotifier {
  @override
  SelectedPokemon build() {
    return const SelectedPokemon(
      redPokemonList: [],
      bluePokemonList: [],
    );
  }

  /// state の値に応じて、[pokemon] を [type] のリストに追加または除外する。
  void togglePokemonList(Pokemon pokemon, SelectedPokemonListType type) {
    switch (type) {
      // * redList
      case SelectedPokemonListType.red:
        if (state.redPokemonList.contains(pokemon)) {
          removeFromPokemonList(pokemon, type);
          return;
        }

        addToPokemonList(pokemon, type);
        return;

      // * blueList
      case SelectedPokemonListType.blue:
        if (state.bluePokemonList.contains(pokemon)) {
          removeFromPokemonList(pokemon, type);
          return;
        }

        addToPokemonList(pokemon, type);
        return;
    }
  }

  /// [pokemon] を [type] のリストに追加する。
  void addToPokemonList(Pokemon pokemon, SelectedPokemonListType type) {
    final targetList = type == SelectedPokemonListType.red
        ? state.redPokemonList
        : state.bluePokemonList;

    // すでに追加済みの場合は何もしない。
    if (targetList.contains(pokemon)) {
      return;
    }

    switch (type) {
      // * redList
      case SelectedPokemonListType.red:
        state = state.copyWith(
          redPokemonList: [...state.redPokemonList, pokemon],
        );
        return;

      // * blueList
      case SelectedPokemonListType.blue:
        state = state.copyWith(
          bluePokemonList: [...state.bluePokemonList, pokemon],
        );
        return;
    }
  }

  /// [pokemon] を [type] のリストから除外する。
  void removeFromPokemonList(Pokemon pokemon, SelectedPokemonListType type) {
    switch (type) {
      // * redList
      case SelectedPokemonListType.red:
        state = state.copyWith(
          redPokemonList:
              state.redPokemonList.where((e) => e != pokemon).toList(),
        );
        return;

      // * blueList
      case SelectedPokemonListType.blue:
        state = state.copyWith(
          bluePokemonList:
              state.bluePokemonList.where((e) => e != pokemon).toList(),
        );
        return;
    }
  }
}
