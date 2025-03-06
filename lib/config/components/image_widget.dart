import 'package:flutter/cupertino.dart';

class ImageWidget extends StatefulWidget {
  final double width,height;
  final String img;
  const ImageWidget({required this.img,required this.height,required this.width,super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(widget.img),
    height: widget.height,
    width: widget.width,);
  }
}
