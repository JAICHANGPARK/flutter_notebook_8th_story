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
            Spacer(),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),Spacer(),
            Text("Solve Doubts",style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
            ),),
            SizedBox(height: 32,),
            Text("Join Millions of Squads From Around "
                "\nWorld,learning On Chat!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white
            ),),
            Spacer(),
            Container(
              height: 48,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.tealAccent[100],
                borderRadius: BorderRadius.circular(24)
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

















