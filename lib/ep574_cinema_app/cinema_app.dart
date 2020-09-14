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
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 9,
              child: Placeholder(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
