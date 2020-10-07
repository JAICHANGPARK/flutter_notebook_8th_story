import 'package:flutter/material.dart';

class DesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => SplashPage(),
        "/home" : (context) => DesignHomePage(),
      },
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

