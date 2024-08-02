import 'package:flutter/material.dart';
import 'package:pokedex/foundation/pokedex_color.dart';

class PokedexScaffold extends StatelessWidget {
  const PokedexScaffold({
    this.isShowAppBar = true,
    this.title = '',
    this.appBarColor,
    this.bodyColor,
    required this.body,
    super.key,
  });

  final bool isShowAppBar;
  final String title;
  final Widget body;
  final Color? appBarColor;
  final Color? bodyColor;

  @override
  Widget build(BuildContext context) {
    final appBarBackgroundColor = appBarColor ?? PokedexColor.primaryContainer;
    final foregroundColor =
        appBarBackgroundColor.computeLuminance() > 0.5 ? PokedexColor.black90Alpha : PokedexColor.onPrimaryContainer;
    return Scaffold(
      appBar: isShowAppBar ? AppBar(
        title: Text(title),
        backgroundColor: appBarBackgroundColor,
        foregroundColor: foregroundColor,
      ) : null,
      backgroundColor: bodyColor,
      body: body,
    );
  }
}
