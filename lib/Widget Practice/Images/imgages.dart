import 'package:flutter/material.dart';

class ImagesHome extends StatelessWidget {
  const ImagesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text("Image from Assets"),
            Image.asset("lib/Images/fsfc.png"),
            const Text("Image from Network"),
            Image.network('https://i.pinimg.com/564x/e2/a9/71/e2a97129b338617ac78ffc73df2f4ec6.jpg')
          ],
        ),
      ),
    );
  }
}
