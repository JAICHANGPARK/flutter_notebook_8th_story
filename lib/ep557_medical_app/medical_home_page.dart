import 'package:flutter/cupertino.dart';
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
                ),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, top: 32),
                    child: Text(
                      "ALL SPECIALISTS",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ],
            )),
            Positioned(
                top: 180,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 72,
                    color: Colors.red,
                    child: Row(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Annette Black",
                                style: GoogleFonts.playfairDisplay(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Heart Specialist",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })),
            Positioned(
                bottom: 16,
                right: 16,
                child: Container(
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 34,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
