import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];
  ListViewHome({super.key});

  Widget _listBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 500,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.purple[colorCodes[index % 10]],
          child: Center(child: Text("Item $index")),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Builder"),
        ),
        body: Container(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 35.0,
              maxHeight: 800.0,
            ),
            child: Row(
              children: <Widget>[Expanded(child: _listBuilder())],
            ),
          ),
        ),
      ),
    );
  }
}
