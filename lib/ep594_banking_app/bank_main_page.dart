import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.5),
                    Colors.black
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Spendings report",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            IconButton(
                                icon: Icon(Icons.keyboard_arrow_right),
                                color: Colors.white,
                                iconSize: 32,
                                onPressed: () {}),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                ),
                              ),
                              Container(
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                ),
                              ),
                              Container(
                                width: 16,
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32),
                          child: Text(
                            "Today",
                            style: TextStyle(color: Colors.white.withOpacity(0.2)),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Netflix Standard",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Monthly payment",
                                    style: GoogleFonts.montserrat(color: Colors.white.withOpacity(.5)),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              "- \$ 12.99",
                              style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
