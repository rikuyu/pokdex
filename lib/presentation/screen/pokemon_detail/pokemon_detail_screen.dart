import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PokemonDetailScreen extends StatelessWidget {
  const PokemonDetailScreen({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(child: Text(id.toString(), style: const TextStyle(color: Colors.white))),
    );
  }
}
