import 'package:flutter/material.dart';
import 'package:mov/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
        child: Image.asset(
          'assets/logo_mov@2x.png',
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
