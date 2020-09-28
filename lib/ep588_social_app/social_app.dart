import 'package:flutter/material.dart';


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
class SocialEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
