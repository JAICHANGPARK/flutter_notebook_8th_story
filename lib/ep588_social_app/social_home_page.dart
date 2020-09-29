import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialHomePage extends StatefulWidget {
  @override
  _SocialHomePageState createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Row(
            children: [
              Icon(Icons.person_outline),
              Icon(Icons.chat_outlined),
              Icon(Icons.crop_square),

              Container(
                margin: EdgeInsets.only(top: 12, bottom: 12),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Center(
                  child: Text("Rooms", style: GoogleFonts.montserrat(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}































