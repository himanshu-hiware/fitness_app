import 'package:flutter/material.dart';
import 'package:gymo/pages/Homepage.dart';
import 'package:gymo/splash_screens/onBoardingscreen.dart';
import 'package:gymo/splash_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
//himanshu
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

