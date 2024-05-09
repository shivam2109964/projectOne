import 'package:flutter/material.dart';

class IconsHome extends StatefulWidget {
  const IconsHome({super.key});

  @override
  State<IconsHome> createState() => _IconsHomeState();
}

class _IconsHomeState extends State<IconsHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.add,
              color: Colors.green,
              size: 48,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 48,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 48,
            ),
          ],
        ),
      ),
    );
  }
}
