import 'package:flutter/material.dart';

class ElementDetailPage extends StatefulWidget {
  String imageTag;

  String titleTag;

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
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.only(left: 24),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5), borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Br",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ],
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
                      ),
                      Text(
                        ""
                        "Bromine is a chemical element with the symbol Br and atomic number 35."
                        " It is the third-lightest halogen, and is a fuming red-brown liquid at "
                        "room temperature that evaporates readily to form a similarly coloured gas. It"
                        "s properties are thus intermediate between those of chlorine and iodine. Isolated "
                        " by two chemists, Carl Jacob Löwig (in 1825) and Antoine Jérôme Balard (in 1826), its name was"
                        " derived from the Ancient Greek βρῶμος referenci",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              left: 16,
              top: 32,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ))
        ],
      ),
    );
  }
}
