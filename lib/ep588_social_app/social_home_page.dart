import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialHomePage extends StatefulWidget {
  @override
  _SocialHomePageState createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "RC",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Notifications",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3.1,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Today",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Clear",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Missed call from ",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          TextSpan(
                                            text: "Jenifer",
                                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                          )
                                        ]
                                      )
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Anitson.",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent[100],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.phone),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "James Lee started",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "following you.",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 84,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                                child: Center(
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Naomi Choi now started",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "following you.",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 100,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                                child: Center(
                                  child: Text(
                                    "Following",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("This Week",style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                        TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Missed call from ",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              TextSpan(
                                                text: "Jenifer",
                                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                              )
                                            ]
                                        )
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Anitson.",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent[100],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.phone),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "James Lee started",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "following you.",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 84,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                                child: Center(
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Earlier",style: GoogleFonts.montserrat(
                            fontSize: 18,
                          ),),
                          SizedBox(height: 16,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                        TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Missed call from ",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              TextSpan(
                                                text: "Jenifer",
                                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                              )
                                            ]
                                        )
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Anitson.",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: Colors.tealAccent[100],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.phone),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "James Lee started",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "following you.",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 36,
                                width: 84,
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                                child: Center(
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.person_outline,
                size: 32,
              ),
              Icon(
                Icons.chat_outlined,
                size: 32,
              ),
              Icon(
                Icons.crop_square,
                size: 32,
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: Text(
                    "Rooms",
                    style: GoogleFonts.montserrat(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}





















