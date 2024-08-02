import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/foundation/router/pokedex_router.dart';

void main() => runApp(ProviderScope(child: PokedexApp()));

class PokedexApp extends StatelessWidget {
  PokedexApp({super.key});

  final _router = PokedexRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(useMaterial3: true),
      routerConfig: _router.config(),
    );
  }
}
