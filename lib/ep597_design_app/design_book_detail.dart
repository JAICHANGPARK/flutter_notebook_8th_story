import 'package:flutter/material.dart';

class DesignBookDetailPage extends StatefulWidget {
  @override
  _DesignBookDetailPageState createState() => _DesignBookDetailPageState();
}

class _DesignBookDetailPageState extends State<DesignBookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,

            child: Container(
              height: 320,
              child: Placeholder(),
            ),
          )
        ],
      ),
    );
  }
}
