// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_find_house/models/space.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecomendedSpace() async {
    var result =
        await http.get('https://bwa-cozy.herokuapp.com/recommended-spaces');

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
