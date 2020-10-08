import 'package:flutter/material.dart';


class DesignHomePage extends StatefulWidget {
  @override
  _DesignHomePageState createState() => _DesignHomePageState();
}

class _DesignHomePageState extends State<DesignHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child:  Container(
            decoration: BoxDecoration(),
          ),
        )
      ],
    );
  }
}
