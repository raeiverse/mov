import 'package:flutter/material.dart';
import 'package:mov/pages/home_screen.dart';
import 'package:mov/pages/splash_screen.dart';
import 'package:mov/pages/splash_screen1.dart';
import 'package:mov/pages/splash_screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
