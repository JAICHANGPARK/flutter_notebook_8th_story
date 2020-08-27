import 'package:flutter/material.dart';

class ElementDetailPage extends StatefulWidget {
  @override
  _ElementDetailPageState createState() => _ElementDetailPageState();
}

class _ElementDetailPageState extends State<ElementDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Hero(
                tag: "tImage",
                child: Container(
                  decoration: BoxDecoration(),
                ),
              )),
          Positioned(
            left: 16,
              top: 32,
              child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ))
        ],
      ),
    );
  }
}
