import 'package:flutter/material.dart';

class StackHome extends StatelessWidget {
  const StackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 400,
              height: 400,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 25,
              width: 25,
              color: Colors.greenAccent,
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.face),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
