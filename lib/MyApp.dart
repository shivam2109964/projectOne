import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttre_one/ToDo%20-%20App/bloc/todo_bloc.dart';
import 'package:fluttre_one/ToDo%20-%20App/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todo App",
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            brightness: Brightness.light,
            primary: Colors.yellowAccent,
            onPrimary: Colors.black,
            secondary: Colors.lightGreen,
            onSecondary: Colors.lightGreen,
            error: Colors.red,
            onError: Colors.redAccent,
            background: Colors.white,
            onBackground: Colors.black,
            surface: Colors.white54,
            onSurface: Colors.white30,
          ),
        ),
        home: BlocProvider<TodoBloc>(
          create: (context) => TodoBloc()
            ..add(
              TodoStarted(),
            ),
          child: const TodoHome(),
        ),
      ),
    );
  }
}
