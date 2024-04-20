import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttre_one/Widget%20Practice/bloc%201/increment_bloc.dart';

class ScaffoldOne extends StatelessWidget {
  const ScaffoldOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncrementBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: const Text(
            "Scaffold",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: BlocBuilder<IncrementBloc, IncrementState>(
            builder: (context, state) {
              if (state is IncrementStateCount) {
                return Text(
                  "You have pressed the button ${state.count.toString()} times",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                );
              }
              return Container();
            },
          ),
        ),
        floatingActionButton: BlocBuilder<IncrementBloc, IncrementState>(
          builder: (context, state) {
            return FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {
                BlocProvider.of<IncrementBloc>(context).add(IncrementCount());
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
