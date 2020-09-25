import 'package:flutter/material.dart';

import 'rental_main_page.dart';

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


