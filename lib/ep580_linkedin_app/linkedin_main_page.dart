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

        decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.4],
            colors: [
              Colors.blue[400],
              Colors.blue[50]
            ]
          )
        ),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}