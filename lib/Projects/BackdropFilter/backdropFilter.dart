import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterHome extends StatefulWidget {
  const BackDropFilterHome({super.key});

  @override
  State<BackDropFilterHome> createState() => _BackDropFilterHomeState();
}

class _BackDropFilterHomeState extends State<BackDropFilterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackDrop Filter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Hello World"),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: AlertDialog(
                          title: const Text("BackDrop Filter"),
                          content: const Text("Did you like it?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Icon(Icons.blur_circular))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.route_rounded),
      ),
    );
  }
}
