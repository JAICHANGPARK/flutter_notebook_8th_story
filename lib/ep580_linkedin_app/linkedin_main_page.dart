import 'package:flutter/material.dart';

class LinkedinMainPage extends StatefulWidget {
  @override
  _LinkedinMainPageState createState() => _LinkedinMainPageState();
}

class _LinkedinMainPageState extends State<LinkedinMainPage> {
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
                                  hintStyle: TextStyle(
                                    fontSize: 14
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,child: Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                            child: Card(
                              child: IconButton(icon: Icon(Icons.chat_bubble_outline),
                              onPressed: (){},),
                            ),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Placeholder(),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.home_outlined, size: 28,),
                              CircleAvatar(
                                radius: 3,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.home_outlined, size: 28,),
                              CircleAvatar(
                                radius: 3,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: FloatingActionButton(onPressed: (){}),
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
















