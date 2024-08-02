import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllMonsterBallScreen extends StatelessWidget {
  const AllMonsterBallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(color: Colors.blue, child: const Text("モンスターボール"));
  }
}
