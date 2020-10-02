import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep588_social_app/social_bottom_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomsPage extends StatefulWidget {
  @override
  _RoomsPageState createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "RC",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Rooms",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.all(9),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black)
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      bottom: 4,
                                      right: 4,
                                      top: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.tealAccent,
                                          border: Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text("Create Room"),
                              Text("John Doe"),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent[100]
                                ),
                                child: Center(
                                  child: Text("Join New"),
                                ),

                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(9),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(9),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)
                          ),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SocialBottomNavBar(),
    );
  }
}












