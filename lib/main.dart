import 'package:flutter/material.dart';
import 'package:provider_example/ui/home_page.dart';

void main() {
  runApp(const ProviderExample());
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
      home: MyToDoList(),
    );
  }
}
