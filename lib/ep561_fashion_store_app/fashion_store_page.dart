import 'package:flutter/material.dart';

class FashionStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionMainPage(),
    );
  }
}

class FashionMainPage extends StatefulWidget {
  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 3, child: Placeholder()),
          Expanded(flex: 2, child: Placeholder()),
          Expanded(flex: 1, child: Placeholder()),
          Expanded(flex: 15,child: Placeholder()),
          Expanded(flex: 3,child: Placeholder()),
        ],
      ),
    );
  }
}
