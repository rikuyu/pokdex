import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';

class PokedexScaffold extends StatelessWidget {
  const PokedexScaffold({this.appBarColor, this.bodyColor, required this.title, required this.body, super.key});

  final String title;
  final Widget body;
  final Color? appBarColor;
  final Color? bodyColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: appBarColor ?? PokedexColor.primaryContainer,
        foregroundColor: PokedexColor.onPrimaryContainer,
      ),
      backgroundColor: bodyColor,
      body: body,
    );
  }
}
