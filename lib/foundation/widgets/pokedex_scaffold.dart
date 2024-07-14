import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';

class PokedexScaffold extends StatelessWidget {
  const PokedexScaffold({required this.title, required this.body, super.key});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: PokedexColor.primaryContainer,
        foregroundColor: PokedexColor.onPrimaryContainer,
      ),
      body: body,
    );
  }
}
