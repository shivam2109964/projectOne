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
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              iconSize: 20,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_alarm_rounded),
                  label: "Add1",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.zoom_out_map_rounded),
                  label: "lable",
                ),
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
