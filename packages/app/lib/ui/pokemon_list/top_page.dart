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

    pokedexList = pokedexList1to50;
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ポケモン'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  if (pokedexList.first == 1) {
                    pokedexList = pokedexList51to100;
                    return;
                  }
                  pokedexList = pokedexList1to50;
                });
              },
            ),
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
