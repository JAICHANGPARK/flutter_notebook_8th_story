import 'package:flutter/material.dart';
class UserListTilePhoneWidget extends StatelessWidget {
  String title;
  String subtitle;
  String name;

  UserListTilePhoneWidget(this.title, this.subtitle, this.name);

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: title,
                          style: TextStyle(fontSize: 13),
                        ),
                        TextSpan(
                          text: name,
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        )
                      ]
                  )
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            color: Colors.tealAccent[100],
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.phone),
        )
      ],
    );
  }
}