import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text("About"),
                          Text("Hello, I am Dreamwalker, ")
                        ],
                      ),
                    ),
                  ),
                  Card(),
                  Card(),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
