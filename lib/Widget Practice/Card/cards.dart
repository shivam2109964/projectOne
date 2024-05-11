import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardsDart extends StatelessWidget {
  const CardsDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text("Sample Card 1"),
                      subtitle: Text("Default Elevation"),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text("Sample Card 2"),
                      subtitle: Text("Elevation 8"),
                    ),
                  ),
                  Card(
                    elevation: 16,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text("Sample card 3"),
                      subtitle: Text("Elevation"),
                    ),
                  ),
                  Card(
                    elevation: 24,
                    color: Colors.pink,
                    shadowColor: Colors.yellow,
                    child: ListTile(
                      leading: Icon(Icons.album),
                      title: Text("Smaple Card 4"),
                      subtitle: Text("Elevation 24"),
                    ),
                  ),
                   Stack(
                     children: <Widget>[
                       Card(
                         child: ListTile(
                           leading: Icon(Icons.camera),
                           title: Text("Sample Card 1 in Stack"),
                           subtitle: Text("Default Elevation"),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
                         child: Card(
                           elevation: 8,
                           child: ListTile(
                             leading: Icon(Icons.camera),
                             title: Text("Smaple Card 2 in Stack"),
                             subtitle: Text("Elevation 8"),
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
                         child: Card(
                           elevation: 16,
                           child: ListTile(
                             leading: Icon(Icons.album),
                             title: Text("Sample Card 3 in Stack"),
                             subtitle: Text("Elevation 16"),
                           ),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.fromLTRB(24, 48, 24, 24),
                         child: Card(
                           elevation: 24,
                           child: ListTile(
                             leading: Icon(Icons.album),
                             title: Text("Sample Card 4 in Stack"),
                             subtitle: Text("Elevation: 24"),
                           ),
                         ),
                       ),
                     ],
                   ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
