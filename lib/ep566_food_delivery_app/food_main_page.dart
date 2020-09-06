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
                    NavigationRail(destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.favorite_border),
                        selectedIcon: Icon(Icons.favorite),
                        label: Text('First'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.favorite_border),
                        selectedIcon: Icon(Icons.favorite),
                        label: Text('First'),
                      ),
                    ], selectedIndex: _pageIndex)
                  ],
                ),
              )),
          Positioned(
              left: 64,
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
