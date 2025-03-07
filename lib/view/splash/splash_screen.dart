import 'package:flutter/material.dart';
import 'package:news_wave/config/components/image_from_asset_widget.dart';
import 'package:news_wave/services/splash/splash_services.dart';

import '../../config/colors/colors_class.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 final SplashServices services = SplashServices();
  @override
  void initState() {
    super.initState();
    services.goToHomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        ImageFromAssetWidget(img: 'assets/images/logo.png', height: 200, width: 200),
      ),
    );
  }
}



