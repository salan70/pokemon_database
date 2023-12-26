import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:model/model.dart';

import '../../application/pokemon_list_state.dart';
import '../../domain/ability.dart';
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
        return DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('No.')),
            DataColumn(label: Text('名前')),
            DataColumn(label: Text('タイプ')),
            DataColumn(label: Text('とくせい')),
            DataColumn(label: Text('合計')),
            DataColumn(label: Text('HP')),
            DataColumn(label: Text('こうげき')),
            DataColumn(label: Text('ぼうぎょ')),
            DataColumn(label: Text('とくこう')),
            DataColumn(label: Text('とくぼう')),
            DataColumn(label: Text('すばやさ')),
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
    final abilityText = _buildAbilityText(pokemon.abilityList);

    return <DataCell>[
      DataCell(Text(pokemon.pokedex.toString())),
      DataCell(Text(pokemon.name)),
      DataCell(Text(typeText)),
      DataCell(Text(abilityText)),
      DataCell(Text(pokemon.baseStats.total.toString())),
      DataCell(Text(pokemon.baseStats.hp.toString())),
      DataCell(Text(pokemon.baseStats.attack.toString())),
      DataCell(Text(pokemon.baseStats.defense.toString())),
      DataCell(Text(pokemon.baseStats.specialAttack.toString())),
      DataCell(Text(pokemon.baseStats.specialDefense.toString())),
      DataCell(Text(pokemon.baseStats.speed.toString())),
    ];
  }

  /// [typeList] から 「タイプ」として表示するテキストを生成する。
  static String _buildTypeText(List<PokeType> typeList) {
    final typeLabelList = typeList.map((e) => e.jaLabel).toList();
    return typeLabelList.join('\n');
  }

  /// [abilityList] から 「とくせい」として表示するテキストを生成する。
  static String _buildAbilityText(List<Ability> abilityList) {
    final abilityLabelList = abilityList.map((e) => e.name).toList();
    return abilityLabelList.join('\n');
  }
}
