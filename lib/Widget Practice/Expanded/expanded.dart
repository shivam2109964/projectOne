import 'package:flutter/material.dart';

class ExpandedHome extends StatelessWidget {
  const ExpandedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Widget"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              height: 50,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Container Top",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: const Center(
                              child: Text("Flex: 2"),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 100,
                          child: const Center(
                            child: Text("Container"),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green,
                            height: 100,
                            child: const Center(
                              child: Text("Flex 1"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 100,
                            color: Colors.green,
                            child: const Center(
                              child: Text("Flex: 2"),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 200,
                          child: const Center(
                            child: Text("Container"),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            color: Colors.green,
                            child: const Center(child: Text("Flex: 1")),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 50,
              child: const Center(
                child: Text("Bottom Container"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
