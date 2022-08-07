import 'package:flutter/material.dart';
import 'package:mov/theme.dart';
import 'package:mov/widget/homescreen/coming_soon.dart';
import 'package:mov/widget/homescreen/now_playing.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: verticalEdge),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalEdge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BUDI GARINANTO',
                          style: SubTitleText.copyWith(fontSize: 24),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_wallet.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'IDR 280.000',
                              style: SubTitleText.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/image_border.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/a.png',
                                width: 62,
                                height: 62,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalEdge),
                child: Text(
                  'NOW PLAYING',
                  style: SubTitleText.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: horizontalEdge),
                    NowPlaying_Widget(
                      imageUrl: 'assets/movie_pic1.png',
                      title: 'One Piece',
                      genre: 'Adventure',
                      score: '9.2',
                    ),
                    NowPlaying_Widget(
                      imageUrl: 'assets/movie_pic2.png',
                      title: 'Avenger',
                      genre: 'Action',
                      score: '9.7',
                    ),
                    NowPlaying_Widget(
                      imageUrl: 'assets/movie_pic3.png',
                      title: 'Alita Battle',
                      genre: 'Family, Sci-fi',
                      score: '7.8',
                    ),
                    SizedBox(width: horizontalEdge - 20),
                  ],
                ),
              ),
              SizedBox(height: 29),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalEdge),
                child: Text(
                  'COMING SOON',
                  style: SubTitleText.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: horizontalEdge),
                    child: Column(
                      children: [
                        ComingSoon_Widget(
                          imageUrl: 'assets/coming_pic1.png',
                          title: 'Frozen II',
                          genre: 'Animation, Kids',
                          score: 'n/a',
                        ),
                        ComingSoon_Widget(
                          imageUrl: 'assets/coming_pic2.png',
                          title: 'John Wick',
                          genre: 'Action',
                          score: 'n/a',
                        ),
                        ComingSoon_Widget(
                          imageUrl: 'assets/coming_pic1.png',
                          title: 'Frozen II',
                          genre: 'Animation, Kids',
                          score: 'n/a',
                        ),
                      ],
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
