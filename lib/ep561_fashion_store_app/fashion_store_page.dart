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
                flex: 3,
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
                flex: 3,
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.lightGreenAccent, border: Border.all(color: Colors.black, width: 2)),
                )),
            Expanded(
                flex: 20,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,
                        width: 2)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery",
                                style: GoogleFonts.alata(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              SizedBox(height: 8,),
                              Text("UPS International -- Express Shipping", )
                            ],
                          ),
                          
                          IconButton(icon: Icon(Icons.arrow_forward),
                              iconSize: 42,
                              onPressed: (){

                          })
                        ],
                      ),
                    )
                  ],
                )),
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
