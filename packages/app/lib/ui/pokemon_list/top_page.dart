import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pokemon_data_table.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ポケモン一覧'),
      ),
      body: const Center(
        child: SingleChildScrollView(child: PokemonDataTable()),
      ),
    );
  }
}
