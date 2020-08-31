import 'package:flutter/material.dart';

class MedicalDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 24,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(36),
                      topLeft: Radius.circular(36),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("BACK")),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      margin: EdgeInsets.only(left: 24, right: 24, top: 18),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(36),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2019/12/06/13/40/anesthesia-4677401_960_720.jpg"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 24,
                              top: 24,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration:
                                        BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4)),
                                    child: Text(
                                      "LIVE",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration:
                                        BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.security,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 4),
                                          child: Text(
                                            "3.2k",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Positioned(
                            right: 16,
                            bottom: 16,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.volume_down,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.file_upload,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 64,
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          Expanded(child: Container()),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




















