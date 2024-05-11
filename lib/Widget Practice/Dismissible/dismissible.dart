import 'package:flutter/material.dart';

class DismissibleHome extends StatefulWidget {
  const DismissibleHome({super.key});

  @override
  State<DismissibleHome> createState() => _DismissibleHomeState();
}

class _DismissibleHomeState extends State<DismissibleHome> {
  List<int> colorCount = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  Widget _listBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: colorCount.length,
      itemBuilder: (BuildContext context, int index) {
        final int item = colorCount[index];
        return Dismissible(
          background: Container(
            color: Colors.redAccent,
          ),
          onDismissed: (DismissDirection direction) {
            setState(() {
              colorCount.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 200),
                content: Text("Removed - Item - $index"),
              ),
            );
          },
          key: Key(item.toString()),
          child: Container(
            height: 50,
            color: Colors.amber[colorCount[index % 10]],
            child: Center(
              child: Text("Item - $index"),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100,
                maxHeight: 800,
              ),
              child: _listBuilder(),
            ),
          ),
        ],
      ),
    );
  }
}
