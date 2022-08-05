import 'package:flutter/material.dart';
import 'package:mov/pages/signin_screen.dart';

import '../theme.dart';

class SplashScreen3 extends StatelessWidget {
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
                    'assets/illustration3.png',
                    width: 200,
                  ),
                ],
              ),
              SizedBox(height: 43),
              Text(
                'Cashless',
                style: TitleText.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Gunakan e-wallet untuk\ntransaksi tiket nonton',
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
                        builder: (context) => SigninScreen(),
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
                    'Mulai',
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
