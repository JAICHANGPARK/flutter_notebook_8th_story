import 'package:flutter/material.dart';

class SocialHomePage extends StatefulWidget {
  @override
  _SocialHomePageState createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            )
          ],
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
        ),
      ),
    );
  }
}
