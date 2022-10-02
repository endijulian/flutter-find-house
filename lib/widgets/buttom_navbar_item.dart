import 'package:flutter/material.dart';
import 'package:flutter_find_house/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  // const BottomNavbarItem({Key? key}) : super(key: key);

  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem({Key? key, 
    required this.imageUrl,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive ? Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(1000),
            )
          ),
        ) : Container(),
      ],
    );
  }
}