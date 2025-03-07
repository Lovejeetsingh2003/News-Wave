import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
