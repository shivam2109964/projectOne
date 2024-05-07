import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttre_one/Projects/Stopwatch/Pages/BlocHomeStopPage.dart';
import 'package:fluttre_one/Projects/Stopwatch/bloc/stopwatch_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeStopwatch extends StatefulWidget {
  const HomeStopwatch({super.key});

  @override
  State<HomeStopwatch> createState() => _HomeStopwatchState();
}

class _HomeStopwatchState extends State<HomeStopwatch> {
  late Stopwatch stopwatch;
  late Timer t;

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    t = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

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
    String second = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minute = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");

    return '$minute:$second:$millisecond';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Normal StopWatch",
          style: GoogleFonts.aclonica(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: 250,
              child: MaterialButton(
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
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              onPressed: () {
                stopwatch.reset();
              },
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => StopwatchBloc(),
                child: BlocStopHomePage(),
              ),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
