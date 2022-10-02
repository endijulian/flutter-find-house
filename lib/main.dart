// @dart=2.9
import 'package:flutter_find_house/pages/splash_page.dart';
// ignore: unused_import
import 'package:flutter_find_house/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPage(),
    );
  }
}