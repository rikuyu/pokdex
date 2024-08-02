import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllHealItemScreen extends StatelessWidget {
  const AllHealItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow, child: const Text("回復"));
  }
}
