import 'package:app/util/constant/pokedex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pokemon_data_table.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('ポケモン一覧'),
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
      body: Center(
        child: SingleChildScrollView(
          child: PokemonDataTable(pokedexList: pokedexList),
        ),
      ),
    );
  }
}
