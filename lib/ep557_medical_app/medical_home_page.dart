import 'package:flutter/material.dart';

class MedicalHomePage extends StatefulWidget {
  @override
  _MedicalHomePageState createState() => _MedicalHomePageState();
}

class _MedicalHomePageState extends State<MedicalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Row(
              children: [
                FlatButton(onPressed: (){}, child: Text("MENU"))
              ],
            ))
              
          ],
        ),
      ),
    );
  }
}
