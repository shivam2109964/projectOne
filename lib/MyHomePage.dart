import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget{
 const MyHomePage ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}