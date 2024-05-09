import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  ListViewHome({super.key});

  final List<int> colorCode = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900,
  ];

  final List<List<int>> rgbColorCode = <List<int>>[
    [255, 0, 0, 1],
    [255, 165, 0, 1],
    [255, 255, 0, 1],
    [0, 128, 0, 1],
    [0, 0, 255, 1],
    [75, 0, 130, 1],
    [128, 0, 128, 1],
    [255, 20, 147, 1],
    [0, 255, 255, 1],
    [255, 0, 255, 1],
  ];

  Widget listBuilderLeft() {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 500,
      itemBuilder: (BuildContext context, int index) {
        final List<int> colorcodeRGB =
            rgbColorCode[index % rgbColorCode.length];
        return Container(
          color: Color.fromRGBO(
            colorcodeRGB[0],
            colorcodeRGB[1],
            colorcodeRGB[2],
            colorcodeRGB[3].toDouble(),
          ),
          child: Center(
            child: Text("Item $index"),
          ),
        );
      },
    );
  }

  Widget listBuilderRight() {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 500,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.purple[colorCode[index % 10]],
          child: Center(
            child: Text("Item $index"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 50,
          maxHeight: 800,
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: listBuilderLeft()),
            Expanded(child: listBuilderRight())
          ],
        ),
      ),
    );
  }
}
