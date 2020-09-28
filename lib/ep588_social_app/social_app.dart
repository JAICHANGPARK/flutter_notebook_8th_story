import 'package:flutter/material.dart';

import 'social_enter_page.dart';
import 'social_home_page.dart';


class SocialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SocialEnterPage(),
        "/home" :(context) => SocialHomePage(),
      },
    );
  }
}
