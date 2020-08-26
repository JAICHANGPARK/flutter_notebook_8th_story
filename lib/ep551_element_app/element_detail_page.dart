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
                tag: "image",
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/08/25/18/48/art-2681039_960_720.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
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
