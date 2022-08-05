import 'package:flutter/material.dart';
import 'package:mov/pages/splash_screen3.dart';

import '../theme.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalEdge,
            vertical: verticalEdge,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/illustration2.png',
                    width: 200,
                  ),
                ],
              ),
              SizedBox(height: 43),
              Text(
                'Pre Sale',
                style: TitleText.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Tidak khawatir ketinggalan\nupdate film terbaru',
                style: SubTitleText.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen3(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: PinkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Lanjutkan',
                    style: BtnText.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
