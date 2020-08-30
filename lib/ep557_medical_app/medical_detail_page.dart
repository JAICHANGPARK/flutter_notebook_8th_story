import 'package:flutter/material.dart';

class MedicalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 48,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,

              ),
            ))
          ],
        ),
      ),
    );
  }
}
