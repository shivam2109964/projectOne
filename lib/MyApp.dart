import 'package:flutter/material.dart';
import 'package:fluttre_one/Projects/Stopwatch/Pages/HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
           brightness: Brightness.light,
           primary: Colors.yellowAccent,
           onPrimary: Colors.black,
           secondary: Colors.lightGreen,
           onSecondary: Colors.lightGreen,
           error: Colors.red,
           onError: Colors.redAccent,
           background: Colors.white,
           onBackground: Colors.black,
        ),
      ),
      home: const HomeStopWatch()
    );
  }
}
