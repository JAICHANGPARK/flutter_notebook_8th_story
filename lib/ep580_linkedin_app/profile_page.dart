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
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About"),
                            Text("Hello, I am Dreamwalker, ")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About"),
                            Row(
                              children: [
                                Container(
                                  height: 84,
                                  width: 84,
                                  decoration: BoxDecoration(
                                    color: Colors.green
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Flutter Live Coding"),
                                    Text("Flutter Live Coding in YouTube"),
                                  ],
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
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













