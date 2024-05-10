import 'package:flutter/material.dart';

class SizedBoxHome extends StatelessWidget {
  const SizedBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sized Box"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elvated Button"),
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Simple Elvation Button"),
              ),
            ),
            SizedBox(
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Box with specific height"),
              ),
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Button with specific widget"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Button With Inifite",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
