import 'package:flutter/material.dart';

class ChipDart extends StatelessWidget {
  const ChipDart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                child: Text("FT"),
              ),
              label: Text("Flutter Tutorial"),
            ),
            Chip(
              avatar: CircleAvatar(
                child: Icon(Icons.share),
              ),
              label: Text("Share"),
            ),
          ],
        ),
      ),
    );
  }
}
