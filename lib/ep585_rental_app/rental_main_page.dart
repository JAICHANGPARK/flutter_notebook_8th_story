import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RentalMainPage extends StatefulWidget {
  @override
  _RentalMainPageState createState() => _RentalMainPageState();
}

class _RentalMainPageState extends State<RentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text("House"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            "Price",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            "Willa",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                      color: Colors.teal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 16,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: ListView(
                      children: [],
                    ),
                  ),
                  Positioned(
                    bottom: 24,
                    left: 120,
                    right: 120,
                    child: Center(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(24)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Map View",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}













