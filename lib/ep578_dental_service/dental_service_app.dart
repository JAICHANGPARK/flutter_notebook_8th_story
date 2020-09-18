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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.search),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.search),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.search),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


























