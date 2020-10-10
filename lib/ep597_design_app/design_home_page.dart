import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'design_book_detail.dart';

class DesignHomePage extends StatefulWidget {
  @override
  _DesignHomePageState createState() => _DesignHomePageState();
}

class _DesignHomePageState extends State<DesignHomePage> with SingleTickerProviderStateMixin {
  double _topHeight = 840;
  TabController _tabController;
  PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: _pageIndex);
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _topHeight = 250.3766233766234;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 2.8);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://s3.amazonaws.com/designco-web-assets/uploads/2017/07/Podcast-large_2x-1450x1112.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 64,
            left: 150,
            right: 150,
            child: Hero(
              tag: "logo",
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                    child: Text(
                  "Place Logo",
                  style: TextStyle(),
                )),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 160,
            child: Hero(
              tag: "logoText",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    "Discover. Learn. Elevate.",
                    style: TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 1.5),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 150),
            bottom: 0,
            left: 0,
            right: 0,
            top: _topHeight,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: TabBar(
                            labelPadding: EdgeInsets.zero,
                            indicatorPadding: EdgeInsets.zero,
                            controller: _tabController,
                            onTap: (index) {},
                            indicatorWeight: 4,
                            indicatorColor: Colors.indigo,
                            indicatorSize: TabBarIndicatorSize.label,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            isScrollable: false,
                            tabs: [
                              Tab(
                                text: "BOOKS",
                                // child: Text("Books"),
                              ),
                              Tab(
                                text: "PODCAST",
                              ),
                              Tab(
                                text: "WORKSHOPS",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: PageView(
                                controller: _pageController,
                                onPageChanged: (pIdx){
                                  setState(() {
                                    
                                  });
                                },
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: SizedBox(
                                      width: 320,
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Hero(
                                                tag: "id_img",
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(16),
                                                      topLeft: Radius.circular(16),
                                                    ),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://cdn.pixabay.com/photo/2019/12/12/13/42/castle-4690710_960_720.jpg"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Principles\nof Product\nDesign",
                                                      style: TextStyle(
                                                          fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: 2),
                                                    ),
                                                    Text("By Dreamwalker"),
                                                    MaterialButton(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(24)),
                                                      onPressed: () {
                                                        Navigator.of(context).push(MaterialPageRoute(
                                                          builder: (context) => DesignBookDetailPage(
                                                              "https://cdn.pixabay.com/photo/2019/12/12/13/42/castle-4690710_960_720.jpg"),
                                                        ));
                                                      },
                                                      color: Colors.indigo,
                                                      child: Text(
                                                        "READ BOOK",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: SizedBox(
                                      width: 320,
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(16),
                                                    topLeft: Radius.circular(16),
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2019/12/12/13/42/castle-4690710_960_720.jpg"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Principles\nof Product\nDesign",
                                                      style: TextStyle(
                                                          fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: 2),
                                                    ),
                                                    Text("By Dreamwalker"),
                                                    MaterialButton(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(24)),
                                                      onPressed: () {},
                                                      color: Colors.indigo,
                                                      child: Text(
                                                        "READ BOOK",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: SizedBox(
                                      width: 320,
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(16),
                                                    topLeft: Radius.circular(16),
                                                  ),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2019/12/12/13/42/castle-4690710_960_720.jpg"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      "Principles\nof Product\nDesign",
                                                      style: TextStyle(
                                                          fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: 2),
                                                    ),
                                                    Text("By Dreamwalker"),
                                                    MaterialButton(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(24)),
                                                      onPressed: () {},
                                                      color: Colors.indigo,
                                                      child: Text(
                                                        "READ BOOK",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListView(),
                            ListView(),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Placeholder(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
