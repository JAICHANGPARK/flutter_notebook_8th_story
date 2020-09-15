import 'package:flutter/material.dart';

class CinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReservePage(),
    );
  }
}

class ReservePage extends StatefulWidget {
  @override
  _ReservePageState createState() => _ReservePageState();
}

class _ReservePageState extends State<ReservePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          "Black Panther",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 7,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 10,
              child: Row(
                children: [
                  Text("Time: 20:00",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),),
                VerticalDivider(),
                  Text("11th March")

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: Colors.grey,
                thickness: 4,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Total: \$13.99 x 3 seats = ",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "\$41.97",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 11,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(32)),
                child: Center(
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
