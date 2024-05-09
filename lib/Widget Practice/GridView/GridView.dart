import 'dart:math';

import 'package:flutter/material.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GirdView"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List<Widget>.generate(
          10,
          (index) {
            return GridTile(
              child: Card(
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                    .withOpacity(1.0),
              ),
            );
          },
        ),
      ),
    );
  }
}
