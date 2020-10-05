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
            top: 48,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                    Colors.black
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 16),
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                        color: Colors.grey,

                      ),
                    ),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}














