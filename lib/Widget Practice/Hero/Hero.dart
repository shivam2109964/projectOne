import 'dart:math';

import 'package:flutter/material.dart';

class HeroHome extends StatefulWidget {
  const HeroHome({super.key});

  @override
  State<HeroHome> createState() => _HeroHomeState();
}

class _HeroHomeState extends State<HeroHome> {
  Widget _smallImage(Color color) {
    return Container(
      height: 300,
      width: 50,
      color: color,
    );
  }

  Widget bigImage(Color color) {
    return Container(
      height: 300,
      width: 300,
      color: color,
    );
  }

  void _fullImagePage(BuildContext context, Color color, String tag) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text("Hero Page"),
          ),
          body: Center(
            child: Hero(
              tag: tag,
              child: bigImage(color),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Widget"),
      ),
      body: ListView(
        children: List.generate(
          15,
          (index) {
            Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                .withOpacity(1);
            Key n1 = GlobalKey();
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: GestureDetector(
                  key: n1,
                  child: Hero(
                    tag: index.toString(),
                    child: _smallImage(color),
                  ),
                  onTap: () => _fullImagePage(context, color, index.toString()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
