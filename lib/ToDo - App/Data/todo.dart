//1 is Create a Todo Data

class Todo {
  final String title;
  final String subtitle;
  bool isDone;

  //Creating Constructor
  Todo({this.title = '', this.subtitle = '', this.isDone = false});

  //Create a copy with method  of Todo class
  Todo copyMethod({String? title, String? subtitle, bool? isDone}) {
    return Todo(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        isDone: isDone ?? this.isDone);
  }

  //Now we need a fromJSON to toJSON because we gonna store Todo in local database
  //We create it factory so that its return instace of class (consturt object)
  //and we create a objects to pass the argunment and cook some data
  factory Todo.fromJSON(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      subtitle: json['subtitle'],
      isDone: json['isDone'],
    );
  }
  //Now create a toJSON method
  //We are returning a map that represent a todo objects
  Map<String, dynamic> toJSON() {
    return {
      'title': title,
      'subtitle': subtitle,
      'isDone': isDone,
    };
  }

  //And Lastly its good to always have a toString class
  String toString() {
    return '''Todo: {
      title: $title,
      subtitle: $subtitle,
      isDone: $isDone
    }''';
  }
  //Now 2 is Create a Todo Bloc and starts with events
}
