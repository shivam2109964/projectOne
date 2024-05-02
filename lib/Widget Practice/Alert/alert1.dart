import 'package:flutter/material.dart';

class Alertt1 extends StatelessWidget {
  const Alertt1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Create a custome showSnackBar
    void showSnackBar(String text, String ans) {
      final SnackBar snackBar = SnackBar(
        duration: const Duration(milliseconds: 500),
        content: Row(
          children: <Widget>[
            Icon(
              ans.compareTo("Yes") == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo("Yes") == 0 ? Colors.green : Colors.red,
              size: 24,
              semanticLabel: text,
            ),
            Text(text),
          ],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    //Create Simple Dialog
    Future<void> simpleDialog() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Simple Dialog is it nice"),
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
        },
      )) {
        case "Yes":
          showSnackBar("Thanks", "Yes");
          break;
        case "No":
          showSnackBar("Oh! No Try to provide you best", "No");
          break;
      }
    }

    //Now creating Alert Dialog Box
    Future<void> alertDialogBox() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("It is nice"),
              title: Text("Alert Dialog Box"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, "Yes");
                  },
                  child: const Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, "No");
                  },
                  child: const Text("No"),
                ),
              ],
            );
          })) {
        case "Yes":
          showSnackBar("Thanks", "Yes");
          break;
        case "No":
          showSnackBar("Oh! No I try to provide you best", "No");
          break;
      }
    }

    //Now Create a timer Dialog Widgit
    void timerDialog() {
      final DateTime now = DateTime.now();
      showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
      ).then((TimeOfDay? onValue) =>
          showSnackBar(onValue?.format(context) ?? " ", "Ok"));
    }

    //Create a Date Picker
    void datePicker() {
      final DateTime now = DateTime.now();
      showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
      ).then((DateTime? onValue) => showSnackBar("$onValue", "Ok"));
    }

    return Scaffold(
      backgroundColor: Colors.red.shade300,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: simpleDialog,
                child: const Text("Simple Dialog"),
              ),
              ElevatedButton(
                onPressed: alertDialogBox,
                child: const Text("Alert Dialog Box"),
              ),
              ElevatedButton(
                onPressed: timerDialog,
                child: const Text("Timer Dialog"),
              ),
              ElevatedButton(
                onPressed: datePicker,
                child: const Text("Date Picler"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
