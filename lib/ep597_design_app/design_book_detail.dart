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
        ],
      ),
    );
  }
}























