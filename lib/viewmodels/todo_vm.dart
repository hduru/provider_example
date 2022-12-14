import 'package:flutter/cupertino.dart';
import 'package:provider_example/models/todo.dart';

class TodoViewModel with ChangeNotifier {
  //Variables
  final TextEditingController _controller = TextEditingController();
  final List<Todo> _todoList = [];

  //Getter Methods
  List<Todo> get todoList => _todoList;
  TextEditingController get controller => _controller;

  //Setter Methods
  void addTodo() {
    Todo t = Todo(name: _controller.text, status: false);
    _todoList.add(t);

    _controller.clear();

    notifyListeners();
  }

  void checkedItem(index, value) {
    _todoList[index].status = value!;

    notifyListeners();
  }
}
