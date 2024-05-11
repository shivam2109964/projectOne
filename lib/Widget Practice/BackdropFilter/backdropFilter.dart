import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterDart extends StatefulWidget {
  const BackDropFilterDart({super.key});

  @override
  State<BackDropFilterDart> createState() => _BackDropFilterDartState();
}

class _BackDropFilterDartState extends State<BackDropFilterDart> {
  double sX = 0;
  double sy = 0;
  String textVar = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Backdrop Filter Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: Image.asset("lib/Images/fsfc.png"),
                  ),
                  Container(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: sX,
                        sigmaY: sy,
                      ),
                      child: Text(textVar),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sX = 0;
                      sy = 0;
                      textVar = 'Reset';
                    });
                  },
                  child: const Text("Reset"),
                ),
              ],
            ),
            Expanded(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 1;
                          sX = 1;
                          textVar = 'x1:y1';
                        });
                      },
                      child: const Text("x1:y1"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 5;
                          sX = 5;
                          textVar = 'x5:y5';
                        });
                      },
                      child: const Text("x5:y5"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 5;
                          sX = 1;
                          textVar = 'x5:y1';
                        });
                      },
                      child: const Text("x5:y1"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 1;
                          sX = 5;
                          textVar = 'x1:y5';
                        });
                      },
                      child: const Text("x1:y5"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 10;
                          sX = 10;
                          textVar = 'x10:y10';
                        });
                      },
                      child: const Text("x10:y10"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 10;
                          sX = 1;
                          textVar = 'x10:y1';
                        });
                      },
                      child: const Text("x10:y1"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          sX = 1;
                          sX = 10;
                          textVar = 'x1:y10';
                        });
                      },
                      child: const Text("x1:y10"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
