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
          height: MediaQuery.of(context).size.height / 2.3,
          width: MediaQuery.of(context).size.width / 1.7,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey)
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,

            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.15),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
        ),

      ),
    );
  }
}
