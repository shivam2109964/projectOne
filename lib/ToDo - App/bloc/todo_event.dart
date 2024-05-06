part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

//Now the most common event is App started
class TodoStarted extends TodoEvent {}

//Now in the todo app we want to Add todo Event for the purpose of Adding Event
class AddTodo extends TodoEvent {
  final Todo todo;
  const AddTodo(this.todo);

  //Now add this object in the Equatable
  @override
  List<Object> get props => [todo];
}

//Now in the todo app we want to Remove todo Event for the purpose of Delete Event
class RemoveTodo extends TodoEvent {
  final Todo todo;
  const RemoveTodo(this.todo);

  //Now add this object in the Equatable
  @override
  List<Object> get props => [todo];
}

//Now in the todo app we want to Alter todo means isDone or not, means isDone event
class AlterTodo extends TodoEvent {
  final int index;
  const AlterTodo(this.index);

  //Now add this object in the Equatable
  @override
  List<Object> get props => [index];
}
