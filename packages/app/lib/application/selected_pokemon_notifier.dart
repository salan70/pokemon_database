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

        _addToRedPokemonList(pokemon);
        return;

      // * blueList
      case SelectedPokemonListType.blue:
        if (state.bluePokemonList.contains(pokemon)) {
          removeFromPokemonList(pokemon, type);
          return;
        }

        _addToBluePokemonList(pokemon);
        return;
    }
  }

  /// [pokemon] を state.redPokemonList に追加する。
  void _addToRedPokemonList(Pokemon pokemon) {
    // これ以上追加できない場合は何もしない。
    if (state.redPokemonList.length >= SelectedPokemon.maxPokemonCount) {
      return;
    }

    state = state.copyWith(
      redPokemonList: [...state.redPokemonList, pokemon],
    );
  }

  /// [pokemon] を state.bluePokemonList に追加する。
  void _addToBluePokemonList(Pokemon pokemon) {
    // これ以上追加できない場合は何もしない。
    if (state.bluePokemonList.length >= SelectedPokemon.maxPokemonCount) {
      return;
    }

    state = state.copyWith(
      bluePokemonList: [...state.bluePokemonList, pokemon],
    );
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

  /// [type] に応じて、リストを並び替える。
  void reorderPokemonList(
    SelectedPokemonListType type,
    int oldIndex,
    int newIndex,
  ) {
    switch (type) {
      // * redList
      case SelectedPokemonListType.red:
        _reorderRedPokemonList(oldIndex, newIndex);
        return;

      // * blueList
      case SelectedPokemonListType.blue:
        _reorderBluePokemonList(oldIndex, newIndex);
        return;
    }
  }

  /// `state.redPokemonList` を並び替える。
  void _reorderRedPokemonList(int oldIndex, int newIndex) {
    // 変更可能なリストのコピーを作成する。
    final mutableList = List<Pokemon>.from(state.redPokemonList);

    // 要素を並び替える。
    final pokemon = mutableList.removeAt(oldIndex);
    mutableList.insert(
      newIndex > oldIndex ? newIndex - 1 : newIndex,
      pokemon,
    );

    // 状態を更新する。
    state = state.copyWith(
      redPokemonList: mutableList,
    );
  }

  /// `state.bluePokemonList` を並び替える。
  void _reorderBluePokemonList(int oldIndex, int newIndex) {
    // 変更可能なリストのコピーを作成する。
    final mutableList = List<Pokemon>.from(state.bluePokemonList);

    // 要素を並び替える。
    final pokemon = mutableList.removeAt(oldIndex);
    mutableList.insert(
      newIndex > oldIndex ? newIndex - 1 : newIndex,
      pokemon,
    );

    // 状態を更新する。
    state = state.copyWith(
      bluePokemonList: mutableList,
    );
  }
}
