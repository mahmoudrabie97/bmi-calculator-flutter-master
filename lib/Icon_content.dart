import 'package:flutter/material.dart';

class iconcontent extends StatelessWidget {
  iconcontent({this.icon, this.lable});
  final IconData icon;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: TextStyle(fontSize: 18.0, color: Color(0xff8D8E98)),
        )
      ],
    );
  }
}