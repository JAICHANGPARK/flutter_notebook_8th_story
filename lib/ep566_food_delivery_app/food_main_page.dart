import 'package:flutter/material.dart';

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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      bottomLeft: Radius.circular(48),
                    ),
                    color: Colors.white),
                child: Column(),
              ),

          ),
        ],
      ),
    );
  }
}


















