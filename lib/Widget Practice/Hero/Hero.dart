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
      height: 50,
      width: 50,
      color: color,
    );
  }

  Widget _BigImage(Color color) {
    return Container(
      height: 300,
      width: 300,
      color: color,
    );
  }

  void _fullViewPage(BuildContext context, Color color, String index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text("The Hero Widget"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: index.toString(),
                  child: _BigImage(color),
                ),
              ],
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
          10,
          (index) {
            Color color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
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
                  onTap: () => _fullViewPage(context, color, index.toString()),
                ),
                title: const Text("Tap on the box"),
              ),
            );
          },
        ),
      ),
    );
  }
}
