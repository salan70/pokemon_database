import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'repository/pokemon_repository.dart';
import 'util/logger.dart';

void main() async {
  await init();
  runApp(ProviderScope(child: const MainApp()));
}

Future<void> init() async {
  await WidgetsFlutterBinding.ensureInitialized();
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () async {
              logger.i('Hello');
              final repository = ref.read(pokemonRepositoryProvider);
              await repository.init();
              final pokemonList = await repository.fetchPokemonSchemeList();
              logger.i(pokemonList);
            },
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}
