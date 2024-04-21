import 'package:flutter/material.dart';

class Buttonss extends StatelessWidget {
  const Buttonss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated Button",
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Text Button",
                style: TextStyle(color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sms_failed,
                color: Colors.blue,
                size: 36,
              ),
              tooltip: "Image Button",
            ),
            Material(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {},
                child: const SizedBox(
                  width: 80,
                  height: 40,
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              elevation: 2,
              splashColor: Colors.redAccent,
              fillColor: Colors.deepPurpleAccent,
              highlightColor: Colors.amberAccent,
              child: const Icon(
                Icons.play_arrow,
                color: Colors.limeAccent,
              ),
            ),
            BackButton(
              onPressed: () {},
              color: Colors.white,
            ),
            CloseButton(
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
