import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saarthi/home.dart';
import 'contants.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedSplashScreen(
        splashIconSize: 300,
        //  centered: true,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: Home(),
        splash: SizedBox(
          height: 550,
          width: 450,
          child: ListView(
            children: [
              Image(
                height: 180,
                image: AssetImage('assets/images/wheel.png'),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Saarthi",
                    style: GoogleFonts.permanentMarker(
                        color: colour, fontSize: 32),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
