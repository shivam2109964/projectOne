import 'package:flutter/material.dart';

class RowHome extends StatefulWidget {
  const RowHome({super.key});

  @override
  State<RowHome> createState() => _RowHomeState();
}

enum SingingCharacter { spaceEvenly, start, center }

SingingCharacter? _singingCharacter = SingingCharacter.spaceEvenly;
MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

class _RowHomeState extends State<RowHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: _mainAxisAlignment,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.green,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Item 1"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.redAccent,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Item 2"),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Item 3"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: <Widget>[
                  Radio(
                    value: SingingCharacter.spaceEvenly,
                    groupValue: _singingCharacter,
                    onChanged: (SingingCharacter? value) {
                      setState(
                        () {
                          _singingCharacter = value;
                          _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                        },
                      );
                    },
                  ),
                  const Text("spaceEvenly"),
                  Radio(
                    value: SingingCharacter.center,
                    groupValue: _singingCharacter,
                    onChanged: (SingingCharacter? value) {
                      setState(
                        () {
                          _singingCharacter = value;
                          _mainAxisAlignment = MainAxisAlignment.center;
                        },
                      );
                    },
                  ),
                  const Text("center"),
                  Radio(
                    value: SingingCharacter.start,
                    groupValue: _singingCharacter,
                    onChanged: (SingingCharacter? value) {
                      setState(
                        () {
                          _singingCharacter = value;
                          _mainAxisAlignment = MainAxisAlignment.start;
                        },
                      );
                    },
                  ),
                  const Text("Start"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
