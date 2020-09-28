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
            Text("New Notification (12)", style: GoogleFonts.montserrat(
              color: Colors.white.withOpacity(0.8),
            ),),
            Spacer(),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),Spacer(),
            Text("Solve Doubts",style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 32,),
            Text("Join Millions of Squads From Around "
                "\nWorld, learning On Chat!",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.white,

            ),),
            Spacer(),
            Container(
              height: 48,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.tealAccent[100],
                borderRadius: BorderRadius.circular(24)
              ),
              child: Center(
                child: Text("Explore", style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal
                ),),
              ),
            ),
           SizedBox(height: 42,)
          ],
        ),
      ),
    );
  }
}

















