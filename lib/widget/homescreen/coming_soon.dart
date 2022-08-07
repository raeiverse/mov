import 'package:flutter/material.dart';

import '../../theme.dart';

class ComingSoon_Widget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final String score;
  ComingSoon_Widget({
    this.imageUrl,
    this.title,
    this.genre,
    this.score,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: space),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 100,
                height: 70,
              ),
              SizedBox(width: 15),
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
                    style: GlobalText,
                  ),
                ],
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
          )
        ],
      ),
    );
  }
}
