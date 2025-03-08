import 'package:flutter/material.dart';
import 'package:news_wave/view/splash/splash_screen.dart';
import 'package:news_wave/config/themes/theme.dart';
import 'config/routes/routes.dart';
import 'config/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // Setting theme mode to dark
      theme: lightTheme, // Setting light theme
      darkTheme: darkTheme,
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}