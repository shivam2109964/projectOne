import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Widget"),
      ),
      body: const Center(
        child: Text("Drawer Widget Example"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                ),
              ),
              child: Text("Header"),
            ),
            const ListTile(
              title: Text("Item 1"),
              leading: Icon(Icons.alarm),
            ),
            const ListTile(
              title: Text("Item 2"),
              leading: Icon(Icons.ac_unit),
            ),
            const ListTile(
              title: Text("Item 3"),
              leading: Icon(Icons.account_balance_outlined),
            ),
            const ListTile(
              title: Text("Item 4"),
              leading: Icon(Icons.account_circle_rounded),
            ),
            const ListTile(
              title: Text("Item 5"),
              leading: Icon(Icons.workspaces),
            ),
            ListTile(
              title: const Text("Exist"),
              leading: const Icon(
                Icons.exit_to_app,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
