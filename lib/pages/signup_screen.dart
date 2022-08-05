import 'package:flutter/material.dart';
import 'package:mov/pages/signupPhoto_screen.dart';
import 'package:mov/theme.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalEdge,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 31),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icon_back.png',
                        width: 37,
                        height: 24,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                    ),
                    Text(
                      'Sign Up',
                      style: TitleText.copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
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
              SizedBox(
                height: 20,
              ),
              Text(
                'Nama',
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
                'Email Address',
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
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: verticalEdge),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPhotoEmpty(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
