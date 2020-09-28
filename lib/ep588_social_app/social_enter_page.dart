import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SocialEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Text("New Notification(12)", style: TextStyle(
              color: Colors.white,
            ),),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Text("Solve Doubts",style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
            ),),
            Text("Join Millions of Squads From Around World, learning On Chat!",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
