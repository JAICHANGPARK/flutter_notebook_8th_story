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
              child: Placeholder(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SocialBottomNavBar(),
    );
  }
}
