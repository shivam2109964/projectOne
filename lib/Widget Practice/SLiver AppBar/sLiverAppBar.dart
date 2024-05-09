import 'package:flutter/material.dart';

class SliverAppBarHome extends StatelessWidget {
  const SliverAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.purpleAccent,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliver AppBar"),
              ),
            ),
            SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  color: Colors.red[100 * (index % 9)],
                  child: Center(
                    child: Text("Item $index"),
                  ),
                ),
              ),
              itemExtent: 250,
            )
          ],
        ),
      ),
    );
  }
}
