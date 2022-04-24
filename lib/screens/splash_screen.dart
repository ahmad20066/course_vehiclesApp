import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:vehicles_app/screens/tab_screen.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      title: Text("Welcome to My App"),
      navigateAfterSeconds: TabScreen(),
      image: Image.asset('images/clipart1555035.png'),
      photoSize: 140,
    );
  }
}
