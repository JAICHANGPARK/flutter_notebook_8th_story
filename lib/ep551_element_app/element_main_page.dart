import 'package:flutter/material.dart';

class ChemicalElementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElementMainPage(),
    );
  }
}

class ElementMainPage extends StatefulWidget {
  @override
  _ElementMainPageState createState() => _ElementMainPageState();
}

class _ElementMainPageState extends State<ElementMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Column(
              children: [
                Row(children: [
                  Text("DreamWalker"),
                  Spacer(),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.list), onPressed: (){

                  })
                ],)
              ],
            )),
            Expanded(flex: 8, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}



















