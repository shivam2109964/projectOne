import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedSwitcherDart extends StatefulWidget {
  const AnimatedSwitcherDart({super.key});

  @override
  State<AnimatedSwitcherDart> createState() => _AnimatedSwitcherDartState();
}

class _AnimatedSwitcherDartState extends State<AnimatedSwitcherDart> {
  bool _switchAnimation = true;
  List color = [
    Colors.red,
    Colors.amber,
    Colors.purple,
    Colors.black,
    Colors.deepOrange
  ];
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Switcher"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: _switchAnimation
                  ? Container(
                      key: UniqueKey(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: color[random.nextInt(color.length)],
                      ),
                      height: 300,
                      width: 300,
                    )
                  : Container(
                      key: UniqueKey(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: color[random.nextInt(color.length)],
                      ),
                      height: 300,
                      width: 300,
                    ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _switchAnimation = !_switchAnimation;
              });
            },
            child: const Text("Click"),
          ),
        ],
      ),
    );
  }
}
