import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Blocs/bloc/scaffold_one_bloc.dart';

class ScaffoldOne extends StatelessWidget {
  const ScaffoldOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScaffoldOneBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: BlocBuilder<ScaffoldOneBloc, ScaffoldOneState>(
            builder: (context, state) {
              if (state is IncrementState)
                return Text(
                  "${state.count.toString()}",
                  style: TextStyle(color: Colors.white),
                );
              else if (state is DecermentState) {
                return Text("${state.count.toString()}");
              }
              return Container();
            },
          ),
        ),
        floatingActionButton: BlocBuilder<ScaffoldOneBloc, ScaffoldOneState>(
          builder: (context, state) {
            return FloatingActionButton(
              shape: CircleBorder(),
              onPressed: () {
                BlocProvider.of<ScaffoldOneBloc>(context)
                    .add(IncrementFireEvent());
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
