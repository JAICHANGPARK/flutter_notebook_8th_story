import 'package:flutter/material.dart';
import 'package:flutter_notebook_8th_story/ep574_cinema_app/chair.dart';
import 'package:flutter_notebook_8th_story/ep574_cinema_app/cinema_provider.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => CinemaProvider(),


      child: Scaffold(
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
              SizedBox(height: 24,),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow1.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow1[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow1[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow1[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow1[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow1[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow2.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow2[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow2[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow2[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow2[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow2[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow3.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow3[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow3[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow3[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow3[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow3[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow4.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow4[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow4[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow4[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow4[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow4[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow5.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow5[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow5[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow5[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow5[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow5[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 32,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: chairRow6.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                if (chairRow6[index].reserveState == ReserveState.reserved) {
                                  return;
                                }
                                if (chairRow6[index].reserveState == ReserveState.available) {
                                  setState(() {
                                    chairRow6[index].reserveState = ReserveState.selected;
                                  });
                                } else {
                                  setState(() {
                                    chairRow6[index].reserveState = ReserveState.available;
                                  });
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2,4,2,4),
                                height: 28,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: chiarColor(chairRow6[index].reserveState),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            );
                          }),
                    ),

                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 10, padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(2,4,2,4),
                        height: 28,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Available", style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(2,4,2,4),
                        height: 28,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Reserved", style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(2,4,2,4),
                        height: 28,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Selected by you", style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ],
                  )),
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
                      Row(
                        children: [
                          
                        ],
                      )
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
      ),
    );
  }
}


























