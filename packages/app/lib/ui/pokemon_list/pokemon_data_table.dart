import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:model/model.dart';

import '../../application/pokemon_list_state.dart';
import '../../domain/pokemon.dart';

class PokemonDataTable extends ConsumerWidget {
  const PokemonDataTable({super.key, required this.pokedexList});

  final List<int> pokedexList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ],
          rows: <DataRow>[
            for (final pokemon in pokemonList)
              _PokemonDataRow(pokemon: pokemon),
          ],
        );
      },
    );
  }
}

/// [Pokemon] のデータを表示する [DataRow]。
class _PokemonDataRow extends DataRow {
  _PokemonDataRow({
    required this.pokemon,
  }) : super(cells: _buildCells(pokemon));

  final Pokemon pokemon;

  /// [pokemon] から [DataCell] のリストを生成する。
  static List<DataCell> _buildCells(Pokemon pokemon) {
    final typeText = _buildTypeText(pokemon.typeList);

    return <DataCell>[
      DataCell(Text(pokemon.name)),
      DataCell(Text(typeText)),
      DataCell(Text('${pokemon.baseStats.total}')),
      DataCell(Text('${pokemon.baseStats.hp}')),
      DataCell(Text('${pokemon.baseStats.attack}')),
      DataCell(Text('${pokemon.baseStats.defense}')),
      DataCell(Text('${pokemon.baseStats.specialAttack}')),
      DataCell(Text('${pokemon.baseStats.specialDefense}')),
      DataCell(Text('${pokemon.baseStats.speed}')),
    ];
  }

  /// [typeList] から 「タイプ」として表示するテキストを生成する。
  static String _buildTypeText(List<PokeType> typeList) {
    final typeLabelList = typeList.map((e) => e.jaLabel).toList();
    return typeLabelList.join('\n');
  }
}
