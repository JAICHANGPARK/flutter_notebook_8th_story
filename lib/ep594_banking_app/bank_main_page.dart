import 'package:flutter/material.dart';


class BankMainPage extends StatefulWidget {
  @override
  _BankMainPageState createState() => _BankMainPageState();
}

class _BankMainPageState extends State<BankMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 32,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(),
          )

        ],
      ),
    );
  }
}
