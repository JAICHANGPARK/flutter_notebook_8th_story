import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SocialBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 64,
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.person_outline,
              size: 32,
            ),
            Icon(
              Icons.chat_outlined,
              size: 32,
            ),
            Icon(
              Icons.crop_square,
              size: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/rooms");
              },
              child: Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: Text(
                    "Rooms",
                    style: GoogleFonts.montserrat(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
