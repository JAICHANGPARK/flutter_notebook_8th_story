import 'package:badges/badges.dart';
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
            Expanded(flex: 2, child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [

                  Expanded(
                    child: Row(
                      children: [
                        IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                          Navigator.of(context).pop();
                        }),
                        IconButton(icon: Icon(Icons.menu), onPressed: (){

                        }),
                      ],
                    ),
                  ),

                  Expanded(child: Center(child: Text("MY CART"))),

                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Badge(
                        child: Icon(Icons.shopping_cart),
                        badgeContent: Text("2"),
                      ),
                    ),
                  )

                ],
              ),
            )),
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 15, child: Placeholder())
          ],
        ),
      ),
    );
  }
}
