import 'package:flutter/cupertino.dart';

class ImageFromAssetWidget extends StatefulWidget {
  final double width,height;
  final String img;
  const ImageFromAssetWidget({required this.img,required this.height,required this.width,super.key});

  @override
  State<ImageFromAssetWidget> createState() => _ImageFromAssetWidget();
}

class _ImageFromAssetWidget extends State<ImageFromAssetWidget> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(widget.img),
      height: widget.height,
      width: widget.width,);
  }
}
