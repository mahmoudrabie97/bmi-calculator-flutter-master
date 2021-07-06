import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({this.colour, this.cardchild,this.onpressed});
  final Color colour;
  final Widget cardchild;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
          child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
