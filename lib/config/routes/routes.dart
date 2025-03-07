import 'package:flutter/material.dart';
import 'package:news_wave/config/routes/routes_name.dart';
import 'package:news_wave/view/home/home_screen.dart';
import 'package:news_wave/view/splash/splash_screen.dart';

import '../../view/login/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}