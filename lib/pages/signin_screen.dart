import 'package:flutter/material.dart';
import 'package:mov/theme.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Skip',
                    style: TitleText,
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  'assets/logo_mov@2x.png',
                  width: 167,
                  height: 80,
                ),
              ),
              SizedBox(
                height: 68,
              ),
              Text(
                'Sign In',
                style: TitleText.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Username',
                style: SubTitleText.copyWith(fontSize: 16),
              ),
              TextField(
                style: TextStyle(color: WhiteColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: GreyColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: SubTitleText.copyWith(fontSize: 16),
              ),
              TextField(
                obscureText: true,
                style: TextStyle(color: WhiteColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: GreyColor),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: PinkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Masuk Akun',
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: PurpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Daftar Akun',
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
