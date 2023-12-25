import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'application/pokemon_list_state.dart';
import 'util/logger.dart';

void main() async {
  await init();
  runApp(const ProviderScope(child: MainApp()));
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
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
              final pokemonList = await ref.read(pokemonListProvider.future);
              logger.i(pokemonList);
            },
            child: const Text('Hello'),
          ),
        ),
      ),
    );
  }
}
