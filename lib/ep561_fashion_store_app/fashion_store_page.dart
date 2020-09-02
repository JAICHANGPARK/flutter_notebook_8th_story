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
                      BoxDecoration(color: Colors.lightGreenAccent, border: Border.all(color: Colors.black, width: 2),
                      ),
                  padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ORDER SUMMARY"),
                          Text("5 items in your cart")
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 20,
                child: ListView(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black, width: 2), color: Colors.grey[300]),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "UPS International -- Express Shipping",
                              )
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.arrow_forward), iconSize: 42, onPressed: () {})
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black, width: 2), color: Colors.grey[200]),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Payment",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              Text(
                                "method",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Credit card -- ending in 4100",
                              )
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.arrow_forward), iconSize: 42, onPressed: () {})
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black, width: 2), color: Colors.grey[300]),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Preferred address -- Home #1",
                              )
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.arrow_forward), iconSize: 42, onPressed: () {})
                        ],
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.black, width: 2), color: Colors.grey[200]),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              Text(
                                "number",
                                style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Preferred number - 070-123-4567",
                              )
                            ],
                          ),
                          Spacer(),
                          IconButton(icon: Icon(Icons.arrow_forward), iconSize: 42, onPressed: () {})
                        ],
                      ),
                    ),
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
