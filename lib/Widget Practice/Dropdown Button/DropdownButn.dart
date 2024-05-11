import 'package:flutter/material.dart';

class DropdownButtonDart extends StatefulWidget {
  const DropdownButtonDart({super.key});

  @override
  State<DropdownButtonDart> createState() => _DropdownButtonDartState();
}

class _DropdownButtonDartState extends State<DropdownButtonDart> {
  String dropDownItem = "Green";
  List<String> dropDownItems = [
    "Green",
    "Red",
    "Yellow",
    "Blue",
    "Pink",
    "Orange",
  ];

  Color _getColor(String color) {
    if (color.compareTo("Green") == 0) {
      return Colors.green;
    } else if (color.compareTo("Red") == 0) {
      return Colors.red;
    } else if (color.compareTo("Yellow") == 0) {
      return Colors.yellow;
    } else if (color.compareTo("Blue") == 0) {
      return Colors.blue;
    } else if (color.compareTo("Pink") == 0) {
      return Colors.pink;
    } else if (color.compareTo("Orange") == 0) {
      return Colors.orange;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button"),
      ),
      body: Container(
        color: _getColor(dropDownItem),
        child: Center(
          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(30),
            style: const TextStyle(fontSize: 36, color: Colors.black),
            icon: const Icon(
              Icons.ads_click,
              color: Colors.black,
              size: 30,
            ),
            value: dropDownItem,
            items: dropDownItems.map<DropdownMenuItem<String>>(
              (e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              },
            ).toList(),
            onChanged: (String? newValue) {
              setState(
                () {
                  dropDownItem = newValue!;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
