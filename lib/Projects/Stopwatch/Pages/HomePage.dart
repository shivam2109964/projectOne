import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//The reason of creating a stateful widget
//we often need to change the data for that purpose
class HomeStopWatch extends StatefulWidget {
  const HomeStopWatch({super.key});

  @override
  State<HomeStopWatch> createState() => _HomeStopWatchState();
}

class _HomeStopWatchState extends State<HomeStopWatch> {
  //Rule 1 Always Define a Function OutSide of Build
  late Stopwatch stopwatch;
  late Timer t;
  void handleStartStop() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
    } else {
      stopwatch.start();
    }
  }

  String returnFormattedText() {
    var milli = stopwatch.elapsed.inMilliseconds;

    String millisecond = (milli % 1000).toString().padLeft(3, "0");
    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minute = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");

    return "$minute:$seconds:$millisecond";
  }

  //Create a init state
  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    t = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: MaterialButton(
                clipBehavior: Clip.antiAlias,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  handleStartStop();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 4,
                    ),
                  ),
                  child: Text(
                    returnFormattedText(),
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                stopwatch.reset();
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
