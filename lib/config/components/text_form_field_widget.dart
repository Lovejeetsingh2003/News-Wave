import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType inputType;
  final String hintText;
  final bool obscureText;
  const TextFormFieldWidget({
    required this.obscureText,
    required this.inputType,
    required this.hintText,
  required this.focusNode,
  required this.controller,
  super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      keyboardType: widget.inputType,
      onChanged: (value) {

      },
      validator: (value) {

      },
      textInputAction: TextInputAction.next,
    );
  }
}
