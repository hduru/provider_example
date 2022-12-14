// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider_example/viewmodels/todo_vm.dart';

class ToDoListViewWidget extends StatelessWidget {
  TodoViewModel todoVM;

  ToDoListViewWidget({super.key, required this.todoVM});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: todoVM.todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(todoVM.todoList[index].name),
                  trailing: Checkbox(
                    value: todoVM.todoList[index].status,
                    onChanged: (value) => todoVM.checkedItem(index, value),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
