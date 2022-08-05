import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mov/pages/signin_screen.dart';
import 'package:mov/pages/splash_screen2.dart';
import 'package:mov/theme.dart';

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/illustration.png',
                    width: 200,
                  ),
                ],
              ),
              SizedBox(height: 43),
              Text(
                'Now Playing',
                style: TitleText.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Lebih mudah untuk mengetahui\nfilm yang sedang tampil',
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
                        builder: (context) => SplashScreen2(),
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
              SizedBox(
                height: 16,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: PurpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Lewati Perkenalan',
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
