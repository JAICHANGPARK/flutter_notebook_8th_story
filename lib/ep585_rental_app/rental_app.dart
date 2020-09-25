import 'package:flutter/material.dart';

class RentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:"/",
      routes: {
        "/" : (context) => RentalMainPage(),
      },
    );
  }
}


