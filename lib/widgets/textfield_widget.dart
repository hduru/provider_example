// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final VoidCallback? onTap;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.controller,
    this.onTap,
  });

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.controller.text.isEmpty
              ? Container(width: 0)
              : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => widget.controller.clear(),
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          labelText: widget.label,
          labelStyle: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 14,
          ),
        ),
        keyboardType: TextInputType.text,
        onTap: widget.onTap,
      ),
    );
  }
}
