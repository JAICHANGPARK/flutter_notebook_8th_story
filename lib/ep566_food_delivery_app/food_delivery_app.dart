import 'package:flutter/material.dart';

import 'food_main_page.dart';

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => FoodMainPage(),
      },
    );
  }
}

