import 'package:flutter/material.dart';
class SocialEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text("New Notification(12)", style: TextStyle(
            color: Colors.white,
          ),),
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
