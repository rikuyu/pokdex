import 'package:flutter/material.dart';
import 'package:pokedex/foundation/router/pokedex_rounter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(PokedexApp());
}

class PokedexApp extends StatelessWidget {
  PokedexApp({super.key});

  final _router = PokedexRounter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
