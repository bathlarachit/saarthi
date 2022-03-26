import 'package:flutter/material.dart';
import 'package:saarthi/Details.dart';
import 'package:saarthi/splash.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/home': (context) => Home(),
      '/read': (context) => ReadPage()
    },
  ));
}
