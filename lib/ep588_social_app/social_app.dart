import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep588_social_app/rooms_page.dart';

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
        "/rooms" : (context) => RoomsPage(),
      },
    );
  }
}
