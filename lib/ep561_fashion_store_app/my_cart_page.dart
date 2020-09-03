import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 2, child: Placeholder()),
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 15, child: Placeholder())
          ],
        ),
      ),
    );
  }
}
