import 'package:flutter/material.dart';
import 'package:saarthi/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => Splash()},
  ));
}
