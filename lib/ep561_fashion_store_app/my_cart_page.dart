import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey[400],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Center(
                                child: Text(
                          "MY CART",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Badge(
                              child: Icon(Icons.shopping_cart),
                              badgeContent: Text("2"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                )),
            Expanded(
                flex: 18,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[400]),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16),
                        height: MediaQuery.of(context).size.height / 2.8,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "POP\nTEMPLE\nPRINT\nT-\nSHIRT",
                                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 28),
                                  ),
                                  Text("versace limited 2021"),
                                ],
                              ),
                              left: 8,
                              top: 8,
                            ),
                            Positioned(
                                right: 8,
                                top: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "\$1990",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                    ),
                                    Text(
                                      "\$995 per piece",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                    )
                                  ],
                                )),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 58,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 16,
                                              left: 16,
                                              child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("SIZE", style: TextStyle(
                                                fontSize: 12
                                              ),),
                                              Text("48 - L", style: TextStyle(
                                                  fontSize: 12
                                              ),),
                                            ],
                                          )),
                                          Positioned(child: IconButton(icon: Icon(Icons.arrow_downward),
                                          onPressed: (){},))

                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 58,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                    ),
                                    Container(
                                      width: 160,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border: Border.all(color: Colors.black, width: 2),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.shopify.com/s/files/1/0034/8500/7936/products/DynamicImageHandler_29d95cf3-fefc-4f08-b3ad-b8e0a29d3d9f.png"),
                                          )),
                                    ),
                                    Container(
                                      width: 26,
                                      height: 58,
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
