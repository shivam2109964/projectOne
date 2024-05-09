import 'dart:math';

import 'package:flutter/material.dart';

class SliverListHome extends StatelessWidget {
  const SliverListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 100,
                color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                    .withOpacity(1),
                    child: Center(child: Text("Random Color $index")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
