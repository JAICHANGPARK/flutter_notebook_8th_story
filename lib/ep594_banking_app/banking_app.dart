import 'dart:ui';

import 'package:flutter/material.dart';


class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BankingCardPage(),
    );
  }
}


class BankingCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1)
              ),
            ),
          ),
        ),

      ),
    );
  }
}
