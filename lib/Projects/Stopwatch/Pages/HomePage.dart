import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchHome extends StatefulWidget {
  const StopWatchHome({super.key});

  @override
  State<StopWatchHome> createState() => _StopWatchHomeState();
}

class _StopWatchHomeState extends State<StopWatchHome> {
  late Stopwatch stopwatch;
  late Timer timer;

  void handleStopandStart() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
    } else {
      stopwatch.start();
    }
  }

  String returnFormettedString() {
    var milli = stopwatch.elapsed.inMilliseconds;

    String milliisecond = (milli % 1000).toString().padLeft(3, '0');
    String second = ((milli ~/ 1000) % 60).toString().padLeft(2, '0');
    String minute = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");

    return '$minute:$second:$milliisecond';
  }

  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    timer = Timer.periodic(const Duration(milliseconds: 20), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: 250,
              child: MaterialButton(
                onPressed: () {
                  handleStopandStart();
                },
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),
                  child: Text(
                    returnFormettedString(),
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  stopwatch.reset();
                },
                child: const Text("Reset"))
          ],
        ),
      ),
    );
  }
}
