import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep574_cinema_app/chair.dart';

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
  List<Chair> _row1 = [
    Chair(reserveState: ReserveState.reserved),
    Chair(reserveState: ReserveState.available),
    Chair(reserveState: ReserveState.available),
    Chair(reserveState: ReserveState.available),
    Chair(reserveState: ReserveState.reserved),
    Chair(reserveState: ReserveState.available),
    Chair(reserveState: ReserveState.available),
    Chair(reserveState: ReserveState.available),
  ];

  Color chiarColor(ReserveState reserveState) {
    if (reserveState == ReserveState.reserved) {
      return Colors.grey;
    } else if (reserveState == ReserveState.selected) {
      return Colors.red;
    } else {
      return Colors.white;
    }
  }

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
              child: Column(
                children: [
                  Container(
                    height: 32,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: _row1.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (_row1[index].reserveState == ReserveState.reserved) {
                                return;
                              }
                              if (_row1[index].reserveState == ReserveState.available) {
                                setState(() {
                                  _row1[index].reserveState = ReserveState.selected;
                                });
                              } else {
                                setState(() {
                                  _row1[index].reserveState = ReserveState.available;
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              height: 28,
                              width: 16,
                              decoration: BoxDecoration(
                                  color: chiarColor(_row1[index].reserveState), borderRadius: BorderRadius.circular(4)),
                            ),
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ..._row1.map((e) => GestureDetector(
                      //   onTap: (){
                      //   },
                      //   child: Container(
                      //     margin: EdgeInsets.all(4),
                      //     height: 28,
                      //     width: 16,
                      //     decoration: BoxDecoration(
                      //         color: e.reserveState == ReserveState.reserved ? Colors.grey : Colors.white,
                      //       borderRadius: BorderRadius.circular(4)
                      //     ),
                      //   ),
                      // )).toList()
                    ],
                  )
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 10, padding: EdgeInsets.only(left: 16), child: Row()),
            Container(
                height: MediaQuery.of(context).size.height / 9,
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Time: 20:00",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Text("11th March",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Text("Black Panther",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300))
                      ],
                    ),
                  ],
                )),
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
