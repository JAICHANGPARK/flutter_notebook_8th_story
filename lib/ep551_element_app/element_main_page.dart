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
  PageController _pageController = PageController(viewportFraction: 0.7);
  double _indicatorHeight = 35.45;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    _indicatorHeight = MediaQuery.of(context).size.height / 2.6 / 8;
//    print(MediaQuery.of(context).size.height / 2.6 / 8);

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
                            decoration: BoxDecoration(border: Border.all(color: Colors.grey), shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                size: 18,
                              ),
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
            Expanded(
                flex: 8,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "01",
                              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Container(
                                width: 6,
                                height: MediaQuery.of(context).size.height / 2.6,
                                decoration:
                                    BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(8)),
                                child: Stack(
                                  children: [
                                    AnimatedContainer(
                                      height: _indicatorHeight,
                                      decoration:
                                          BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                                      duration: Duration(milliseconds: 500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "08",
                              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 8,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 160,
                              top: 0,
                              child: PageView.builder(
                                controller: _pageController,
                                onPageChanged: (value) {
                                  setState(() {
                                    if (value == 0) {
                                      _indicatorHeight = MediaQuery.of(context).size.height / 2.6 / 8;
                                    } else {
                                      _indicatorHeight = MediaQuery.of(context).size.height / 2.6 / 8 * (value + 1);
                                    }
                                    print(_indicatorHeight);

                                    print(value.toString());
                                  });
                                },
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.yellow.withOpacity(0.2),
                                          spreadRadius: -4,
                                          blurRadius: 4,
                                          offset: Offset(-4, 24)
                                        )
                                      ],
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2017/08/25/18/48/art-2681039_960_720.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(24)),
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Spacer(),
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Center(
                                            child: Text("Br", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18
                                            ),),
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Text(
                                          "diatomic nonmetal",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Bromine",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              child: Column(
                                children: [
                                  
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
