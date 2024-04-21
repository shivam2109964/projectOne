import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Textt extends StatelessWidget {
  const Textt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "Simple Text",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "Over flow Text will skipped automatically. So lets have some Long text to get skipped.",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Shadow Text",
              style: TextStyle(
                fontSize: 15,
                color: Colors.green,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.amber,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                text: "Hi, I am",
                children: <TextSpan>[
                  TextSpan(
                    text: 'Italic ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                  ),
                  TextSpan(
                    text: "Bold ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Normal ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ],
              ),
            ),
            RichText(
              softWrap: true,
              text: const TextSpan(
                text: "I am ",
                style: TextStyle(color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: "Rich Text",
                    style: TextStyle(color: Colors.green, fontSize: 24),
                  ),
                ],
               ),
            ),
          ],
        ),
      ),
    );
  }
}
