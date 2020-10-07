import 'package:flutter/material.dart';

import 'design_home_page.dart';
import 'splash_page.dart';

class DesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => SplashPage(),
        "/home": (context) => DesignHomePage(),
      },
    );
  }
}
