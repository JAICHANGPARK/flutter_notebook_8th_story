import 'package:flutter/material.dart';

class DesignHomePage extends StatefulWidget {
  @override
  _DesignHomePageState createState() => _DesignHomePageState();
}

class _DesignHomePageState extends State<DesignHomePage> {
  @override
  Widget build(BuildContext context) {
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
                child: Center(child: Text("Place Logo",style: TextStyle(),)),
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
                  child: Text("Discover. Learn. Elevate.", style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      letterSpacing: 1.5
                  ),),
                ),
              ),
            ),
          ),
          AnimatedPositioned(

            duration: Duration(milliseconds: 500),
            bottom: 0,
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
          )

        ],
      ),
    );
  }
}
