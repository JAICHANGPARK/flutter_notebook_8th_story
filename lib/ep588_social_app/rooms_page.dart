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
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      bottom: 4,
                                      right: 4,
                                      top: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(16)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 4,
                                      top: 4,
                                      child: Container(
                                        height: 13,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          color: Colors.tealAccent[100],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 10,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "Create Room",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "John Doe",
                                style: GoogleFonts.montserrat(fontSize: 12),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                decoration: BoxDecoration(
                                    color: Colors.tealAccent[100], borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "Join New",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      bottom: 4,
                                      right: 4,
                                      top: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(16)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 16,
                                      top: 0,
                                      left: 16,
                                      child: Container(
                                        height: 10,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400], borderRadius: BorderRadius.circular(4)),
                                        child: Center(
                                            child: Text(
                                          "LIVE",
                                          style: TextStyle(
                                            fontSize: 8,
                                          ),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "Flutter Live",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "1 Mins Ago",
                                style: GoogleFonts.montserrat(fontSize: 12),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "Join Now",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 4,
                                      bottom: 4,
                                      right: 4,
                                      top: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(16)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 16,
                                      top: 0,
                                      left: 16,
                                      child: Container(
                                        height: 10,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400], borderRadius: BorderRadius.circular(4)),
                                        child: Center(
                                            child: Text(
                                          "LIVE",
                                          style: TextStyle(
                                            fontSize: 8,
                                          ),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "Me UnBoxing",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              Text(
                                "10 Mins Ago",
                                style: GoogleFonts.montserrat(fontSize: 12),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "Join Now",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Groups",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Favorite group those you follows")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 4.5,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                      elevation: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 42,
                                                  width: 42,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.black),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("The Dance Crew", style: TextStyle(
                                                        fontSize: 12,
                                                      ),),
                                                      SizedBox(height: 4,),
                                                      Text("MoonWalk Tutorials",style: TextStyle(
                                                        fontWeight: FontWeight.bold
                                                      ),),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                Icon(Icons.lock, size: 20,)

                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 10,
                                                  ),
                                                  CircleAvatar(
                                                    radius: 10,
                                                  ),
                                                  CircleAvatar(
                                                    radius: 10,
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
                                                    child: Center(
                                                      child: Text(
                                                        "Request",
                                                        style: GoogleFonts.montserrat(
                                                            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 4.5,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.black,
                                    elevation: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
