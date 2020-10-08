import 'package:flutter/material.dart';
class SplashPage extends StatelessWidget {
  Widget _flightShuttleBuilder(
      BuildContext flightContext,
      Animation<double> animation,
      HeroFlightDirection flightDirection,
      BuildContext fromHeroContext,
      BuildContext toHeroContext,
      ) {
    return DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    );
  }
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
                Spacer(),
                Hero(
                  tag: "logo",
                  flightShuttleBuilder: _flightShuttleBuilder,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Place Logo",style: TextStyle(),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text("Discover. Learn. Elevate.", style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 1.5
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: (){
                        Navigator.of(context).pushNamed("/home");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)
                    ),
                    height: 48,
                    minWidth: 240,
                    color: Colors.white,
                    child: Text("START EXPLORING", style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 17
                    ),),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text("BY xxxxx", style: TextStyle(
                    color: Colors.white
                  ),),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
