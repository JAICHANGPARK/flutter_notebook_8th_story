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
                            padding: const EdgeInsets.only(left: 8, top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Icon(
                                  Icons.add_to_photos,
                                  size: 20,
                                )),
                                Expanded(
                                  flex: 10,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "What on your mind?",
                                        hintStyle: GoogleFonts.montserrat(fontSize: 12)),
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
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Image",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.movie,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Video",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.attachment,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "File",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.receipt,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Article",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
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
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                CircleAvatar(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Dreamwalker"),
                                      Text("Minato-Ku at Tokyo. 10 min ago", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(icon: Icon(Icons.more_horiz), onPressed: (){

                                })
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Flutter is a powerful framework. Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
                            overflow: TextOverflow.fade,),
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://cdn.pixabay.com/photo/2020/09/17/12/39/sunflowers-5579060_960_720.jpg"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "100+",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.movie,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "500+",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.share,
                                  size: 18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Share",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.send,
                                  size: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Article",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
