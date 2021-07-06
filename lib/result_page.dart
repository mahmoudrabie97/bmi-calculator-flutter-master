import 'package:bmi_calculator/Reusablecard.dart';
import 'package:bmi_calculator/bouttom_boutton.dart';
import 'package:bmi_calculator/consts.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  Resultpage({this.bmiresult,this.iterpretation,this.resulttext});
  final String bmiresult;
  final String resulttext;
  final String iterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: klittletextstyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Reusablecard(
                colour: activecardcolour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toUpperCase(),
                      style: kREsulttextstyle,
                    ),
                    Text(
                      bmiresult,
                      style: kbmitextstyle,
                    ),
                    Text(
                      iterpretation,
                      
                      textAlign: TextAlign.center,
                      style: kbodytextstyle,
                    ),
                  ],
                ),
              ),
            ),
            Bouttomboutton(bouttontitle: 'RE_Calculate',ontap: 
            ()
            {
              Navigator.pop(context);
            },)
          ],
        ));
  }
}
