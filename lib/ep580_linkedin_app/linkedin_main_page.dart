import 'package:flutter/material.dart';

class LinkedinMainPage extends StatefulWidget {
  @override
  _LinkedinMainPageState createState() => _LinkedinMainPageState();
}

class _LinkedinMainPageState extends State<LinkedinMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: TextField(),
                          ),
                        ),
                      ),
                      Expanded(child: Card(
                        child: IconButton(icon: Icon(Icons.chat_bubble_outline),
                        onPressed: (){},),
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
                  child: Placeholder(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
















