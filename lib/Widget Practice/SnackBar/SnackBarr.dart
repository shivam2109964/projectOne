import 'package:flutter/material.dart';

const SnackBar snackBar = SnackBar(content: Text("Simple Snack Bar"));
const SnackBar snackBar1 = SnackBar(
  content: Text(
    "Colored SnackBar - 0.5 Seconds",
    style: TextStyle(color: Colors.black),
  ),
  backgroundColor: Colors.greenAccent,
  duration: Duration(milliseconds: 500),
);
const SnackBar snackBar2 = SnackBar(
  content: Row(
    children: <Widget>[
      Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      Text(" SnackBar with Image"),
    ],
  ),
);

class SnackBarr extends StatelessWidget {
  const SnackBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text(
                "Simple SnackBar",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar1);
              },
              child: const Text(
                "Colored SnackBar - 0.5 Seconds",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar2);
              },
              child: const Text(
                "Snack Bar with Image",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
