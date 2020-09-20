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
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Placeholder(),
              ),
              Expanded(
                flex: 3,
                child: Placeholder(),
              ),
              Expanded(
                flex: 6,
                child: Placeholder(),
              ),
              Expanded(
                flex: 1,
                child: Placeholder(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
















