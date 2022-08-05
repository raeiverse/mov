import 'package:flutter/material.dart';
import 'package:mov/theme.dart';

class SignupPhotoEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalEdge),
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
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Text(
                      'Photo',
                      style: TitleText.copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Text(
                'Welcome,\nBudi Garinanto',
                style: TitleText.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 67,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Image.asset(
                        'assets/user_pic.png',
                        width: 149,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 110, left: 210),
                    child: Image.asset(
                      'assets/icon_upload.png',
                      width: 36,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: verticalEdge),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: GreyColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                    ),
                    child: Text(
                      'Upload Nanti',
                      style: BtnText.copyWith(fontSize: 16),
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
