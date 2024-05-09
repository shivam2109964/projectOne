import 'package:flutter/material.dart';
import 'package:fluttre_one/Widget%20Practice/ListView/ListViewHome.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ALl Projects", 
      home: ListViewHome(),
    );
  }
}
