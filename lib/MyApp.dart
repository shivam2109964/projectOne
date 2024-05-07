import 'package:flutter/material.dart';
import 'package:fluttre_one/Projects/BackdropFilter/backdropFilter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      home: BackDropFilterHome(),
    );
  }
}
