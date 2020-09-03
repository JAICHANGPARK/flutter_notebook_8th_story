import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 2, child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                  Navigator.of(context).pop();
                }),
                IconButton(icon: Icon(Icons.menu), onPressed: (){

                }),
                Text("MY CART"),

              ],
            )),
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 15, child: Placeholder())
          ],
        ),
      ),
    );
  }
}
