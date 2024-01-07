import 'package:flutter/material.dart';
import 'package:pw_generator/page/splashScreen.dart';
import 'package:pw_generator/page/onBoarding.dart';
import 'package:pw_generator/page/login.dart';
import 'package:pw_generator/page/home.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => splashScreen(),
        '/onboard': (context) => OnBoard(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home()
      },
    );
  }
}
