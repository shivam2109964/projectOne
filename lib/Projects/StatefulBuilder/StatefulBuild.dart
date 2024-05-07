import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatefulBuildHome extends StatefulWidget {
  const StatefulBuildHome({super.key});

  @override
  State<StatefulBuildHome> createState() => _StatefulBuildHome();
}

class _StatefulBuildHome extends State<StatefulBuildHome> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Widget Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Builder"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatefulBuilder(
              builder: (context, internalState) {
                print("Small Build");
                return MaterialButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    internalState(() {
                      counter++;
                    });
                  },
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(fontSize: 70),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
