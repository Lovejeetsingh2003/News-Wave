import 'package:flutter/cupertino.dart';

class IconWidget extends StatefulWidget {
  final IconData icon;
  final double size;
  final Color color;
  const IconWidget({required this.icon,required this.size,required this.color ,super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.icon,
      size: widget.size,
      color: widget.color,
    );
  }
}
