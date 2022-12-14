import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/locator.dart';
import 'package:provider_example/ui/home_page.dart';
import 'package:provider_example/viewmodels/todo_vm.dart';

void main() {
  setupLocator();

  runApp(
    ChangeNotifierProvider(
      create: (context) => locator<TodoViewModel>(),
      child: const ProviderExample(),
    ),
  );
}

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyToDoList(),
    );
  }
}
