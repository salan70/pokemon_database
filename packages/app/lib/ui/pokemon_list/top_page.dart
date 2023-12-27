import 'package:app/util/constant/pokedex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'pokemon_data_table.dart';
import 'selected_pokemon_widget.dart';

class TopPage extends ConsumerStatefulWidget {
  const TopPage({super.key});

  @override
  ConsumerState<TopPage> createState() => _TopPageState();
}

class _TopPageState extends ConsumerState<TopPage> {
  late List<int> pokedexList;

  @override
  void initState() {
    super.initState();

    pokedexList = pokedexListTop150;
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ポケモン'),
          actions: [
            TextButton(
              child: const Text('TOP 50'),
              onPressed: () {
                if (pokedexList == pokedexListTop50) {
                  return;
                }
                setState(() {
                  pokedexList = pokedexListTop50;
                });
              },
            ),
            TextButton(
              child: const Text('TOP 100'),
              onPressed: () {
                if (pokedexList == pokedexListTop100) {
                  return;
                }
                setState(() {
                  pokedexList = pokedexListTop100;
                });
              },
            ),
            TextButton(
              child: const Text('TOP 150'),
              onPressed: () {
                if (pokedexList == pokedexListTop150) {
                  return;
                }
                setState(() {
                  pokedexList = pokedexListTop150;
                });
              },
            ),
            const Gap(8),
          ],
        ),
        body: Row(
          children: [
            const Gap(8),
            Expanded(child: PokemonDataTable(pokedexList: pokedexList)),
            const Gap(40),
            const Expanded(child: SelectedPokemonWidget()),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
