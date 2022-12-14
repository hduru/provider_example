// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/viewmodels/todo_vm.dart';
import 'package:provider_example/widgets/button_widget.dart';
import 'package:provider_example/widgets/textfield_widget.dart';
import 'package:provider_example/widgets/todo_listview_widget.dart';

class MyToDoList extends StatelessWidget {
  const MyToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Consumer<TodoViewModel>(builder: (context, todoVM, child) {
          return Column(
            children: [
              _buildTabbar(todoVM),
              todoVM.todoList.isEmpty ? const Text("No data") : ToDoListViewWidget(todoVM: todoVM),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildTabbar(TodoViewModel todoVM) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFieldWidget(
            label: "To Do",
            controller: todoVM.controller,
          ),
        ),
        Expanded(
          flex: 1,
          child: ButtonWidget(
            onPress: () => todoVM.addTodo(),
          ),
        )
      ],
    );
  }
}
