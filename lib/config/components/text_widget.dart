import 'package:flutter/material.dart';
class TextWidget extends StatefulWidget {
  final String text;
  final TextStyle style;
  const TextWidget({required this.style,required this.text,super.key});
  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
    style:widget.style ,);
  }
}