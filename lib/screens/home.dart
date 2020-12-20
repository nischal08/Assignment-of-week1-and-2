import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        actions: [
          CustomCircleAvatar(icon: Icons.search),
          GeneralSizedBox(width: 10.0),
          CustomCircleAvatar(icon: Icons.message),
          GeneralSizedBox(width: 5.0),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/user1.png"),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  CircleAvatar CustomCircleAvatar({IconData icon}) {
    return CircleAvatar(
      backgroundColor: Color(0xffECECEC),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }

  Widget GeneralSizedBox({width, height}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
