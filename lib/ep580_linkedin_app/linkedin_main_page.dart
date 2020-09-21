import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkedinMainPage extends StatefulWidget {
  @override
  _LinkedinMainPageState createState() => _LinkedinMainPageState();
}

class _LinkedinMainPageState extends State<LinkedinMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 0.4, 0.8],
                colors: [Colors.blue[100], Colors.blue[50], Colors.blue[50]])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(Icons.search),
                                    hintText: "Search",
                                    hintStyle: TextStyle(fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                            child: Card(
                              child: IconButton(
                                icon: Icon(Icons.chat_bubble_outline),
                                onPressed: () {},
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 8
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Icon(Icons.add_to_photos)),
                                Expanded(
                                  flex: 10,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "What on your mind?",
                                      hintStyle: GoogleFonts.montserrat(
                                        fontSize: 12
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,

                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.camera_alt, size: 18,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text("Image", style: TextStyle(
                                    fontSize: 12
                                  ),),
                                ),
                                Spacer(),
                                Icon(Icons.camera_alt, size: 18,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text("Video", style: TextStyle(
                                      fontSize: 12
                                  ),),
                                ),
                                Spacer(),
                                Icon(Icons.camera_alt, size: 18,),
                                Text("File", style: TextStyle(
                                    fontSize: 12
                                ),),
                                Spacer(),
                                Icon(Icons.camera_alt, size: 18,),
                                Text("Article", style: TextStyle(
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _pageIndex = 0;
                                  });
                                },
                                child: Icon(
                                  Icons.home_outlined,
                                  size: 28,
                                ),
                              ),
                              _pageIndex == 0
                                  ? CircleAvatar(
                                      radius: 3,
                                    )
                                  : Container()
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _pageIndex = 1;
                                  });
                                },
                                child: Icon(
                                  Icons.person_outlined,
                                  size: 28,
                                ),
                              ),
                              _pageIndex == 1
                                  ? CircleAvatar(
                                      radius: 3,
                                    )
                                  : Container()
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.add),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _pageIndex = 2;
                                  });
                                },
                                child: Icon(
                                  Icons.business_center_outlined,
                                  size: 28,
                                ),
                              ),
                              _pageIndex == 2
                                  ? CircleAvatar(
                                      radius: 3,
                                    )
                                  : Container()
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Badge(
                                child: Icon(Icons.notifications_none),
                                badgeContent: Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                borderRadius: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
