import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_wave/config/components/button_widget.dart';
import 'package:news_wave/config/components/icon_widget.dart';
import 'package:news_wave/config/components/image_widget.dart';
import 'package:news_wave/config/components/loading_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonWidget(bgColor: Colors.white, onPress: (){}, title: "dfghj",textColor: Colors.black,),
    );
  }
}
