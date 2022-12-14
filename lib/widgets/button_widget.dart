import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPress;

  const ButtonWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: onPress,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
