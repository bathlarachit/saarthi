import 'package:flutter/material.dart';
import 'package:saarthi/Details.dart';
import 'package:saarthi/maps.dart';
import 'package:saarthi/splash.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Maps(),
      '/home': (context) => Maps(),
      '/read': (context) => ReadPage(),
      '/map': (context) => Maps()
    },
  ));
}
