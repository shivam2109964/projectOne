//Start with creating enumeration of the status that the app can be in
//So basically in enum we add some common thing like
// initial, loading, success, error

import 'package:equatable/equatable.dart';
import 'package:fluttre_one/ToDo%20-%20App/Data/todo.dart';

enum TodoStatus { initial, loading, success, error }

//Now craete a todo state classes
class TodoState extends Equatable {
  final List<Todo> todos;
  final TodoStatus status;

  const TodoState(
      {this.todos = const <Todo>[], this.status = TodoStatus.initial});

//Now we want to be able to have a copy with method in order to change the state
//and update the list depending on the state of app and the events are comming
  TodoState copyWith({TodoStatus? status, List<Todo>? todos}) {
    return TodoState(
      todos: todos ?? this.todos,
      status: status ?? this.status,
    );
  }

//Now we need to add two more methods to our todo state class
//which are methods that are really proper to dehydrated bloc
//meaning we want fromJSON methods and a toJSON methods
//Those two methods we be able to help us to retrive data
//from our data base and put data in our local database
//so this is exectily what we will do now.

  @override
  factory TodoState.fromJson(Map<String, dynamic> json) {
    /**Firstly we want to retrive all the list of todo but they are stored as a map,
     * so gonna take this Json map and go inside field which is called todo which is basically 
     * gonna be list of all todos list that we have but we didn't store them as to do class memeber
     * we store them as map but it's we parse them as a list of dynamic and them we map each one as 
     * todo object with the method that we've created inside the todo class from Jsom that takes 
     * map of string Dynamic and then all that we are parsing it to list making a list avialable 
     * and ready to have a list of todo and that's why its accepted it here
     * 
     * It's a bit the same here for the status meaning we are inside our enumaration todo stages here 
     * and we are just going though the enumarations and if the Json with parameter status is equal to
     * to the list of enum objects then it will return it
     */
    try {
      var listOfTodos = {json['todo'] as List<dynamic>}
          .map((e) => Todo.fromJSON(e as Map<String, dynamic>))
          .toList();
      return TodoState(
          todos: listOfTodos,
          status: TodoStatus.values.firstWhere(
              (element) => element.name.toString() == json['status']));
    } catch (e) {
      rethrow;
    }
  }
  // Now create a toJson methods
  Map<String, dynamic> toJson() {
    return {'todo': todos, 'status': status.name};
  }

  @override
  List<Object> get props => [todos, status];

}

/**
 * Here Todo state is ready to use 
 * Now the last thing we need to do our bloc so go to the bloc
 */
