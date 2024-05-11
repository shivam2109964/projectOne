import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spacer Widget"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 10,
              ),
              Text("Roll to this side"),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 10,
              ),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 4,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 7,
              ),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(
                flex: 7,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 4,
              ),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(
                flex: 4,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 7,
              ),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Icon(Icons.camera),
              Spacer(
                flex: 10,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 3,
              ),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Text("I am Empty"),
              Spacer(
                flex: 6,
              ),
              Icon(Icons.camera),
              Spacer(
                flex: 4,
              ),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Text("I am empty"),
              Spacer(
                flex: 10,
              ),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
              Spacer(),
              Icon(Icons.camera),
            ],
          )
        ],
      ),
    );
  }
}
