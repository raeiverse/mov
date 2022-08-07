import 'package:flutter/material.dart';

import '../../theme.dart';

class NowPlaying_Widget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final String score;
  NowPlaying_Widget({
    this.imageUrl,
    this.title,
    this.genre,
    this.score,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: space),
      child: Container(
        height: 245,
        width: 137,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 137,
              height: 203,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 7),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: GlobalText,
                    ),
                    SizedBox(height: 1),
                    Text(
                      '$genre',
                      style: GlobalText.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/star.png'),
                    Text(
                      '$score',
                      style: GlobalText.copyWith(fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
