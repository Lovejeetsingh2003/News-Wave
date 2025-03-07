import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../config/routes/routes_name.dart';

class SplashServices{
  void goToHomeScreen(BuildContext context){
    Timer(
      const Duration(seconds: 2),
          () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.home, (route) => true),
    );
  }
}