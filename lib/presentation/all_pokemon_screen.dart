import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pokedex/foundation/widgets/pokedex_scaffold.dart';

@RoutePage()
class AllPokemonScreen extends StatelessWidget {
  const AllPokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    L10n l10n = L10n.of(context);
    return PokedexScaffold(title: l10n.appTitle, body: Container(color: Colors.white));
  }
}
