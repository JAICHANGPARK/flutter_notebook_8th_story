import 'dart:ui';

import 'package:flutter/material.dart';

class BankingCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2.3,
          width: MediaQuery.of(context).size.width / 1.6,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey)),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.01),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16)),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 48,
                    bottom: 48,
                    left: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(16), topLeft: Radius.circular(16))),
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PNK",
                            style: TextStyle(fontSize: 38),
                          ),
                          Text(
                            "FLUTTER PINK \$ Card",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "2720",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            "2720",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            "2720",
                            style: TextStyle(fontSize: 22),
                          ),
                          Text(
                            "2720",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}