import 'package:flutter/material.dart';
import 'package:fluttre_one/Widget%20Practice/Container/container.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Containerr(),
    );
  }
}
