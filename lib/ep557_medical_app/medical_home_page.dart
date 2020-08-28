import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalHomePage extends StatefulWidget {
  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(onPressed: () {}, child: Text("MENU")),
                    FlatButton(onPressed: () {}, child: Text("CALENDAR"))
                  ],
                ),
                Text(
                  "Current Location",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      "Montreal, CA",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                      ),
                    ),
                    IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
                  ],
                )
              ],
            )),
            Positioned(
                child: Container(
              height: 100,
              width: 100,
            ))
          ],
        ),
      ),
    );
  }
}
