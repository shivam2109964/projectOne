import 'package:flutter/material.dart';

SnackBar snackBar = SnackBar(content: Text("Notification Clicked"));

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Demo"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.add_alert),
          ),
        ],
      ),
      body: const Center(
        child: Text("This is the home page"),
      ),
    );
  }
}
