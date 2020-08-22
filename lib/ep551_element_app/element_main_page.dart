import 'package:flutter/cupertino.dart';
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
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "DreamWalker",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle
                            ),
                            child: Center(
                              child: Icon(Icons.search),
                            ),
                          ),
                          IconButton(icon: Icon(Icons.list), onPressed: () {})
                        ],
                      ),
                      Text(
                        "Chemical",
                        style: TextStyle(fontSize: 38),
                      ),
                      Text(
                        "elements",
                        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )),
            Expanded(flex: 8, child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Placeholder()),
                Expanded(
                    flex: 8,
                    child: Placeholder()),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
















