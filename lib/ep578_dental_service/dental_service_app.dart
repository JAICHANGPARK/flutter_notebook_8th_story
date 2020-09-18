import 'package:flutter/material.dart';

class DentalServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DentalMainPage(),
    );
  }
}

class DentalMainPage extends StatefulWidget {
  @override
  _DentalMainPageState createState() => _DentalMainPageState();
}

class _DentalMainPageState extends State<DentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}


























