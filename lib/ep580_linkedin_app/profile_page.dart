import 'package:flutter/cupertino.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[50],
              Colors.red[50],
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 38,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2020/09/21/09/54/tulips-5589607_960_720.jpg"),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(24)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    child: Center(child: Icon(Icons.arrow_back_ios, size: 18,)),
                                    backgroundColor: Colors.grey[300],
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(Icons.more_horiz),
                                  )
                                ],
                              ),
                            ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage("https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4")
                                )
                              ),
                            ),
                          ),
                          Text("Dreamwalker"),
                          Text("Flutter / Android Developer"),
                          Row(
                            children: [
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Activity"),
                              Row(
                                children: [
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: Colors.green
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("Flutter Live Coding"),
                                        Text("Flutter Live Coding in YouTube"),
                                      ],
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Experience"),
                              Row(
                                children: [
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: Colors.green
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("Flutter Live Coding"),
                                        Text("Flutter Live Coding in YouTube"),
                                      ],
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}













