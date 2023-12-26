import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/pokemon_list/top_page.dart';

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
      theme: ThemeData(fontFamily: 'LINESeedJP'),
      debugShowCheckedModeBanner: false,
      home: const TopPage(),
    );
  }
}
