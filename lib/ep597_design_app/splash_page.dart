import 'package:flutter/material.dart';
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.network(
              "https://s3.amazonaws.com/designco-web-assets/uploads/2017/07/Podcast-large_2x-1450x1112.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Column(
              children: [
                Container(
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Text("Place Logo"),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
