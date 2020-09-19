import 'package:flutter/material.dart';

class DentalServiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DentalMainPage(),
    );
  }
}

class DentalMainPage extends StatefulWidget {
  @override
  _DentalMainPageState createState() => _DentalMainPageState();
}

class _DentalMainPageState extends State<DentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(child: Text("Place logo image")),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(color: Colors.brown[200]),
              ),

             ... List.generate(10, (index) =>  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Title 1 2 3 4",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,

                  leading: Icon(
                    Icons.auto_awesome,
                    size: 48,
                  ),
                  tilePadding: EdgeInsets.all(16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),).toList(),

              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Title 1 2 3 4",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  
                  leading: Icon(
                    Icons.auto_awesome,
                    size: 48,
                  ),
                  tilePadding: EdgeInsets.all(16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ExpansionTile(
                  expandedAlignment: Alignment.centerLeft,
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Title 1 2 3 4",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  leading: Icon(
                    Icons.auto_awesome,
                    size: 48,
                  ),
                  tilePadding: EdgeInsets.all(16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("- subtitle 1", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
