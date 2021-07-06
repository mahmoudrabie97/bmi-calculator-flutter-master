
import 'package:flutter/material.dart';

class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({this.icon, this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4C4F5E),
    );
  }
}
