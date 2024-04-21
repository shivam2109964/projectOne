import 'package:flutter/material.dart';

class ALert extends StatelessWidget {
  const ALert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Functions to Show SnackBar on dialog dismiss
    void showSnackBar(String text, String ans) {
      final SnackBar snackBar = SnackBar(
        duration: const Duration(milliseconds: 500),
        content: Row(
          children: <Widget>[
            Icon(
              ans.compareTo('Yes') == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo("Yes") == 0 ? Colors.pink : Colors.yellow,
              size: 24.0,
              semanticLabel: text,
            ),
            Text(text),
          ],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    //Simple Dialog
    Future<void> simpleDialog() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text("Simple Dialog, Is it nice?"),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text("Yes"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text("No"),
                )
              ],
            );
          })) {
        case 'Yes':
          showSnackBar("Thanks", "Yes");
          break;
        case 'No':
          showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }

    Future<void> alertDialog() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text("Is it Nice"),
            title: const Text("Alert Dialog"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, "No");
                },
                child: const Text("No"),
              ),
            ],
          );
        },
      )) {
        case 'Yes':
          showSnackBar("Thanks!", 'Yes');
          break;
        case 'No':
          showSnackBar("Oh! No... Try to provide you best", "No");
          break;
      }
    }


    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //1 Button
            ElevatedButton(
              onPressed: simpleDialog,
              child: const Text(
                "Simple Dialog",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            //2 Button
            ElevatedButton(
              onPressed: alertDialog,
              child: const Text(
                "Alert Dialog",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            //3 Button
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Data Picker Dialog",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            //4 Button
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Timer Picker Dialog",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            //5 Button
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Cupertino Dialog",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
