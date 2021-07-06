import 'package:flutter/material.dart';

import 'consts.dart';

class Bouttomboutton extends StatelessWidget {
  Bouttomboutton({this.ontap,this.bouttontitle});
  final Function ontap;
  final String bouttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        alignment: Alignment.center,
        child: Text(bouttontitle,style: klargebouttontextstyle,),
        color: Color(0xffE81555),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bouttomcontainerheight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}