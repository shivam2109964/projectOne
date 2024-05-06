import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluttre_one/ToDo%20-%20App/Data/todo.dart';
import 'package:fluttre_one/ToDo%20-%20App/bloc/todo_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';

/**In this Hydrated Bloc we need to implement 2 override methods */
class TodoBloc extends HydratedBloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState()) {
    on<TodoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
