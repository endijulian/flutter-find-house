// @dart=2.9
import 'package:flutter_find_house/pages/splash_page.dart';
import 'package:flutter_find_house/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}