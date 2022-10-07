// @dart=2.9
import 'package:flutter_find_house/pages/splash_page.dart';
import 'package:flutter_find_house/providers/space_provider.dart';
// ignore: unused_import
import 'package:flutter_find_house/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: SplashPage(),
    // );

    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      // ignore: prefer_const_constructors
      child: MaterialApp(
        home: const SplashPage(),
      ),
    );
  }
}
