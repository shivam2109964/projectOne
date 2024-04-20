import 'package:flutter/material.dart';

class Containerr extends StatelessWidget {
  const Containerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text("I am container"),
            ),
            Container(
              transform: Matrix4.skewY(0.2),
              child: const Text("Hai, I am Slanting"),
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headlineMedium!.fontSize! *
                        1.0 +
                    50,
              ),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.2),
              child: const Text("I am also Slanting but see my edges"),
            ),
            const Padding(padding: EdgeInsets.all(30)),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(color: Colors.blue),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(color: Colors.green),
                      child: Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(color: Colors.red),
                          child: Center(
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                color: Colors.purple
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
