import 'package:app/application/selected_pokemon_notifier.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/pokemon_list_state.dart';
import '../../domain/pokemon.dart';
import '../../util/constant/selected_pokemon_list_type.dart';

class PokemonDataTable extends ConsumerWidget {
  const PokemonDataTable({super.key, required this.pokedexList});

  final List<int> pokedexList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 選択状況に応じてリビルドさせたいため、 watch する。
    ref.watch(selectedPokemonNotifierProvider);

    final asyncPokemonList = ref.watch(pokemonListProvider(pokedexList));
    return asyncPokemonList.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      data: (pokemonList) {
        return DataTable2(
          headingTextStyle: Theme.of(context).textTheme.labelSmall,
          dataTextStyle: Theme.of(context).textTheme.labelMedium,
          horizontalMargin: 2,
          columnSpacing: 4,
          columns: const <DataColumn>[
            DataColumn2(
              label: Text('', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(label: Text('名前', textAlign: TextAlign.center)),
            DataColumn2(label: Text('タイプ', textAlign: TextAlign.center)),
            DataColumn2(
              label: Text('合計', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('HP', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('こうげき', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('ぼうぎょ', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('とくこう', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('とくぼう', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('すばやさ', textAlign: TextAlign.center),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text(''),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text(''),
              size: ColumnSize.S,
            ),
          ],
          rows: <DataRow>[
            for (final pokemon in pokemonList)
              _PokemonDataRow(pokemon: pokemon, ref: ref),
          ],
        );
      },
    );
  }
}

/// [Pokemon] のデータを表示する [DataRow].
class _PokemonDataRow extends DataRow {
  _PokemonDataRow({
    required this.pokemon,
    required this.ref,
  }) : super(cells: _buildCells(pokemon, ref));

  final Pokemon pokemon;
  final WidgetRef ref;

  /// [pokemon] から [DataCell] のリストを生成する。
  static List<DataCell> _buildCells(Pokemon pokemon, WidgetRef ref) {
    final selectedPokemon = ref.read(selectedPokemonNotifierProvider);
    final notifier = ref.read(selectedPokemonNotifierProvider.notifier);

    return <DataCell>[
      DataCell(
        CachedNetworkImage(
          imageUrl: pokemon.imageUrl ?? '',
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      DataCell(Text(pokemon.name)),
      DataCell(Text(pokemon.typeTextMultiLine)),
      DataCell(Text('${pokemon.baseStats.total}')),
      DataCell(Text('${pokemon.baseStats.hp}')),
      DataCell(Text('${pokemon.baseStats.attack}')),
      DataCell(Text('${pokemon.baseStats.defense}')),
      DataCell(Text('${pokemon.baseStats.specialAttack}')),
      DataCell(Text('${pokemon.baseStats.specialDefense}')),
      DataCell(Text('${pokemon.baseStats.speed}')),
      DataCell(
        IconButton(
          onPressed: () {
            notifier.togglePokemonList(pokemon, SelectedPokemonListType.red);
          },
          icon: Icon(
            selectedPokemon.redPokemonList.contains(pokemon)
                ? Icons.star_rounded
                : Icons.star_outline_rounded,
            color: Colors.red,
          ),
        ),
      ),
      DataCell(
        IconButton(
          onPressed: () {
            notifier.togglePokemonList(pokemon, SelectedPokemonListType.blue);
          },
          icon: Icon(
            selectedPokemon.bluePokemonList.contains(pokemon)
                ? Icons.star_rounded
                : Icons.star_outline_rounded,
            color: Colors.blue,
          ),
        ),
      ),
    ];
  }
}
