import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FashionStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionMainPage(),
    );
  }
}

class FashionMainPage extends StatefulWidget {
  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                    Text(
                      "CHECKOUT",
                      style: GoogleFonts.alata(fontWeight: FontWeight.bold),
                    ),
                    IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.lightGreenAccent, border: Border.all(color: Colors.black,
                      width: 2)),
                )),
            Expanded(flex: 15, child: ListView()),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent, border: Border(top: BorderSide(color: Colors.black, width: 2))),
                  child: Center(
                    child: Text(
                      "PROCEED TO THE NEXT STEP",
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
