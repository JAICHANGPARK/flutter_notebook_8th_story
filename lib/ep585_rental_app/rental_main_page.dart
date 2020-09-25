import 'package:flutter/material.dart';


class RentalMainPage extends StatefulWidget {
  @override
  _RentalMainPageState createState() => _RentalMainPageState();
}

class _RentalMainPageState extends State<RentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 15,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
