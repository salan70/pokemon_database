import 'package:app/util/constant/selected_pokemon_list_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../application/selected_pokemon_notifier.dart';
import '../../domain/selected_pokemon.dart';

class SelectedPokemonWidget extends ConsumerWidget {
  const SelectedPokemonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(Icons.star_rounded, color: Colors.red),
        ),
        Gap(8),
        _SelectedPokemonList(type: SelectedPokemonListType.red),
        Gap(16),
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(Icons.star_rounded, color: Colors.blue),
        ),
        Gap(8),
        _SelectedPokemonList(type: SelectedPokemonListType.blue),
      ],
    );
  }
}

/// 選択中のポケモンをリスト表示する Widget.
class _SelectedPokemonList extends ConsumerStatefulWidget {
  const _SelectedPokemonList({required this.type});

  /// リストの種類.
  final SelectedPokemonListType type;

  @override
  ConsumerState<_SelectedPokemonList> createState() =>
      _SelectedPokemonListState();
}

class _SelectedPokemonListState extends ConsumerState<_SelectedPokemonList> {
  /// フォーカスされている `ListTile` の index.
  ///
  /// どの `ListTile` もフォーカスされていない場合は `null`.
  int? _focusedIndex;

  static const _tilePadding = EdgeInsets.symmetric(horizontal: 4);

  @override
  Widget build(BuildContext context) {
    final selectedPokemon = ref.watch(selectedPokemonNotifierProvider);
    final pokemonList = widget.type == SelectedPokemonListType.red
        ? selectedPokemon.redPokemonList
        : selectedPokemon.bluePokemonList;

    return ReorderableListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: SelectedPokemon.maxPokemonCount,
      itemBuilder: (context, index) {
        /// 並び替えで使用するための key.
        final key = ValueKey('${widget.type.label}_$index}');

        // * ポケモンを未選択の場合
        if (index >= pokemonList.length) {
          return ListTile(
            key: key,
            contentPadding: _tilePadding,
            title: const Text('-'),
          );
        }

        // * ポケモンを選択済みの場合
        final pokemon = pokemonList[index];
        return ListTile(
          key: key,
          contentPadding: _tilePadding,
          tileColor: _focusedIndex == index
              ? widget.type.color.withOpacity(0.1)
              : Theme.of(context).colorScheme.surface,
          onTap: () {
            setState(() {
              // すでにフォーカスされている場合はフォーカスを解除する。
              if (_focusedIndex == index) {
                _focusedIndex = null;
                return;
              }

              _focusedIndex = index;
            });
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        pokemon.name,
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const Gap(4),
                      Text(
                        '| ${pokemon.typeTextSingleLine} |',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const Gap(4),
                      Text(
                        pokemon.abilityTextSingleLine,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Text(
                    pokemon.baseStats.allJoinedText,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 48),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  icon: Icon(
                    Icons.remove_circle_rounded,
                    color: widget.type.color,
                  ),
                  onPressed: () {
                    ref
                        .read(selectedPokemonNotifierProvider.notifier)
                        .removeFromPokemonList(pokemon, widget.type);
                  },
                ),
              ),
            ],
          ),
        );
      },
      onReorder: (int oldIndex, int newIndex) {
        // 未選択の ListTile を並び替えようとした場合は何もしない。
        // UI 上では、並び替えの演出後、元の位置に戻る。
        if (oldIndex >= pokemonList.length || newIndex >= pokemonList.length) {
          return;
        }

        ref
            .read(selectedPokemonNotifierProvider.notifier)
            .reorderPokemonList(widget.type, oldIndex, newIndex);
      },
    );
  }
}
