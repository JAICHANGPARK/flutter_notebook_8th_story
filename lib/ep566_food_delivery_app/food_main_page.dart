import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodMainPage extends StatefulWidget {
  @override
  _FoodMainPageState createState() => _FoodMainPageState();
}

class _FoodMainPageState extends State<FoodMainPage> with SingleTickerProviderStateMixin {
  int _pageIndex = 0;
  double _clipPosition = 280.0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

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
                        padding: const EdgeInsets.only(bottom: 64, top: 48),
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
                            print(index);
                            if (index == 0) {
                              _clipPosition = 280;
                            } else if (index == 1) {
                              _clipPosition = 280 + 64.0 + 32.0;
                            } else if (index == 2) {
                              _clipPosition = 280 + (64.0 * 2) + (32.0 * 2) + 16;
                            } else if (index == 3) {
                              _clipPosition = 280 + (64.0 * 3) + (32.0 * 3) + 16;
                            }
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    bottomLeft: Radius.circular(48),
                  ),
                  color: Colors.white),
              child: Stack(
                children: [
                  AnimatedPositioned(
                      left: -32,
                      top: _clipPosition,
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        height: 84,
                        width: 64,
                        decoration: BoxDecoration(color: Colors.teal[400], borderRadius: BorderRadius.circular(24)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: Icon(Icons.keyboard_arrow_right),
                          ),
                        ),
                      )),
                  Positioned(
                    left: 32,
                    top: 64,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select",
                          style: GoogleFonts.montserrat(
                              fontSize: 28, color: Colors.teal[200], fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Your Choices",
                          style: GoogleFonts.montserrat(
                              fontSize: 28, color: Colors.teal[200], fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 58,
                          width: 280,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                bottom: 0,
                                top: 0,
                                left: 64,
                                child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.teal[300], borderRadius: BorderRadius.circular(12)),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.search),
                                    )),
                              ),
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  right: 48,
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          height: 48,
                          child: TabBar(
                            tabs: [
                              Tab(
                                text: "Daily",
                              ),
                              Tab(
                                text: "Italian",
                              ),
                              Tab(
                                text: "mexican",
                              ),
                              Tab(
                                text: "Asian",
                              )
                            ],
                            controller: _tabController,
                          ),
                        ),
                        Container(
                          height: 360,
                          child: TabBarView(
                            
                            children: [
                              Container(),
                              Container(),
                              Container(),
                              Container(),
                            ],
                            controller: _tabController,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
