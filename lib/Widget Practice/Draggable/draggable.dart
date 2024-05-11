import 'package:flutter/material.dart';

class DraggableHome extends StatefulWidget {
  const DraggableHome({super.key});

  @override
  State<DraggableHome> createState() => _DraggableHomeState();
}

class _DraggableHomeState extends State<DraggableHome> {
  bool isSuccesFull = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: isSuccesFull
                  ? const SizedBox()
                  : Draggable(
                      child: FlutterLogo(
                        size: 100,
                      ),
                      feedback: FlutterLogo(
                        size: 100,
                      ),
                      childWhenDragging: Container(
                        child: const FlutterLogo(
                          size: 100,
                        ),
                      ),
                    ),
            ),
          ),
          Expanded(
            child: DragTarget(
              builder: (BuildContext context, List<String?> candidateData,
                  List rejactedData) {
                return Center(
                  child: isSuccesFull
                      ? Container(
                          color: Colors.amber.shade200,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                const FlutterLogo(
                                  size: 100,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isSuccesFull = false;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          color: Colors.red.shade200,
                        ),
                );
              },
              onWillAcceptWithDetails: (dynamic data) {
                return true;
              },
              onAcceptWithDetails: (dynamic data) {
                setState(() {
                  isSuccesFull = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
