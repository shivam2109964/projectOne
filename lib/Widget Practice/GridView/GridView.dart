import 'dart:math';

import 'package:flutter/material.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Builder"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 2,
        children: List<Widget>.generate(
          20,
          (index) => GridTile(
            child: Card(
              color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                  .withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
