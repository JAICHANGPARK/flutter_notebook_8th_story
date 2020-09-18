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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(Icons.search), onPressed: () {  },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("Place logo image")
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.menu), onPressed: () {  },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
height:                160
              ),
            ],
          ),
        ),
      ),
    );
  }
}


























