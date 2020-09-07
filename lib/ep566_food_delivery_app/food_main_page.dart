import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodMainPage extends StatefulWidget {
  @override
  _FoodMainPageState createState() => _FoodMainPageState();
}

class _FoodMainPageState extends State<FoodMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.teal[400]),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 64),
                        child: NavigationRail(
                          groupAlignment: 1,
                          labelType: NavigationRailLabelType.all,
                          backgroundColor: Colors.teal[400],
                          selectedLabelTextStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          unselectedLabelTextStyle: TextStyle(fontSize: 18, color: Colors.white),
                          leading: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                          ),
                          destinations: [
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: RotatedBox(quarterTurns: -1, child: Text('All Items')),
                            ),
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: RotatedBox(quarterTurns: -1, child: Text('Popular')),
                            ),
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: RotatedBox(quarterTurns: -1, child: Text('New Items')),
                            ),
                            NavigationRailDestination(
                              icon: SizedBox.shrink(),
                              label: RotatedBox(quarterTurns: -1, child: Text('Special')),
                            ),
                          ],
                          selectedIndex: _pageIndex,
                          onDestinationSelected: (index) {
                            setState(() {
                              _pageIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(flex: 10, child: Container()),
                  ],
                ),
              )),
          Positioned(
              left: 64,
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 24, top: 64),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      bottomLeft: Radius.circular(48),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select",style: GoogleFonts.montserrat(
                      fontSize: 28,
                      color: Colors.teal[200],
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Your Choices",style: GoogleFonts.montserrat(
                        fontSize: 28,
                        color: Colors.teal[200],fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),

          ),
        ],
      ),
    );
  }
}


















