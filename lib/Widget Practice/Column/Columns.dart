import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnsHome extends StatefulWidget {
  const ColumnsHome({super.key});

  @override
  State<ColumnsHome> createState() => _ColumnsHomeState();
}

enum ALIGN { spaceEvenly, start, center }

ALIGN? _character = ALIGN.spaceEvenly;
MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

class _ColumnsHomeState extends State<ColumnsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: _mainAxisAlignment,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      "THis is the Column Widget Item 1",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "This is the Column Widget Item 2",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Image.asset('lib/Images/OIG1.jpeg'),
                    const Text(
                      "This is the Column Widget - Item 4",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                children: <Widget>[
                  Radio(
                    value: ALIGN.spaceEvenly,
                    groupValue: _character,
                    onChanged: (ALIGN? value) {
                      setState(
                        () {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                        },
                      );
                    },
                  ),
                  const Text('Evenly'),
                  Radio(
                    value: ALIGN.start,
                    groupValue: _character,
                    onChanged: (ALIGN? value) {
                      setState(
                        () {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.start;
                        },
                      );
                    },
                  ),
                  const Text("Start"),
                  Radio(
                    value: ALIGN.center,
                    groupValue: _character,
                    onChanged: (ALIGN? value) {
                      setState(
                        () {
                          _character = value;
                          _mainAxisAlignment = MainAxisAlignment.center;
                        },
                      );
                    },
                  ),
                  const Text("Center"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
