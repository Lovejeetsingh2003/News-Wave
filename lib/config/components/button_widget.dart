import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final VoidCallback  onPress;
  final String title;
  final Color bgColor,textColor;

  const ButtonWidget({required this.textColor,required this.bgColor,required this.onPress,required this.title,super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        decoration: BoxDecoration(
          color: widget.bgColor, // Button color
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          widget.title,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: widget.textColor
          ),
        ),
      )

    );
  }
}
