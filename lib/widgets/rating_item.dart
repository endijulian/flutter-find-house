import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  // const RatingItem({super.key});

  final int index;
  final int rating;

  RatingItem({
    required this.index,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/icon_start.png' : 'assets/grey_start.png',
      width: 20,
    );
  }
}
