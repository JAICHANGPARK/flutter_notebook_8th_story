import 'package:flutter/material.dart';

class ElementDetailPage extends StatefulWidget {
  String imageTag ;
  String titleTag ;

  ElementDetailPage(this.imageTag, this.titleTag);

  @override
  _ElementDetailPageState createState() => _ElementDetailPageState();
}

class _ElementDetailPageState extends State<ElementDetailPage> {
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
              child: Hero(
                tag: widget.imageTag,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/25/18/48/art-2681039_960_720.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  padding: EdgeInsets.only(left: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100,),
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Br",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "diatomic nonmetal",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Bromine",
                          style: TextStyle(
                            fontSize: 64,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 16,
              top: 32,
              child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ))
        ],
      ),
    );
  }
}
