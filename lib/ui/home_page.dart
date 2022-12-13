// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider_example/models/todo.dart';
import 'package:provider_example/widgets/textfield_widget.dart';

class MyToDoList extends StatelessWidget {
  MyToDoList({super.key});

  final TextEditingController _controller = TextEditingController();
  final List<Todo> todolist = [];

  @override
  Widget build(BuildContext context) {
    Todo elm1 = Todo(name: "Alışveriş", status: false);
    Todo elm2 = Todo(name: "Araba Yıkama", status: false);
    Todo elm3 = Todo(name: "Okul", status: false);
    Todo elm4 = Todo(name: "Dil Kursu", status: false);
    Todo elm5 = Todo(name: "Spor", status: false);

    todolist.add(elm1);
    todolist.add(elm2);
    todolist.add(elm3);
    todolist.add(elm4);
    todolist.add(elm5);

    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextFieldWidget(
                    label: "To Do",
                    controller: _controller,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: todolist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          leading: const Icon(Icons.star),
                          title: Text(todolist[index].name),
                          trailing: Checkbox(
                              value: todolist[index].status,
                              onChanged: (value) {
                                todolist[index].status = value!;
                              }),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
