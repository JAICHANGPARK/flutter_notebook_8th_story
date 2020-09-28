import 'package:flutter/material.dart';

import 'social_enter_page.dart';


class SocialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => SocialEnterPage(),
      },
    );
  }
}
