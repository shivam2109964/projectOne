import 'dart:math';

import 'package:flutter/material.dart';

class SliverGridHome extends StatelessWidget {
  const SliverGridHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                    .withOpacity(1),
                child: Center(
                  child: Text("$index"),
                ),
              ),
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
            ),
          ),
        ],
      ),
    );
  }
}
