import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AllPokemonsScreen extends StatelessWidget {
  const AllPokemonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    L10n l10n = L10n.of(context);
    return Center(
      child: Text(l10n.appTitle),
    );
  }
}
