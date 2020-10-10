import 'package:flutter/material.dart';

class DesignBookDetailPage extends StatefulWidget {
  final String imgString;

  DesignBookDetailPage(this.imgString);

  @override
  _DesignBookDetailPageState createState() => _DesignBookDetailPageState();
}

class _DesignBookDetailPageState extends State<DesignBookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Hero(
              tag: "id_img",
              child: Container(
                height: 320,
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
          Positioned(
            left: 24,
            top: 32,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),

          Positioned(
            top: 280,
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
top: 320,
            left: 16,
            right: 16,
            child: ListView(
              children: [
                Center(child: Text("DREAM WALKER PRESENTS",style: TextStyle(
                  fontSize: 12,
                ),)),
                Center(child: Text("Principles of Product Design", style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                ),)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}























