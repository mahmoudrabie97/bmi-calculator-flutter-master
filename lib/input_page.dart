import 'package:bmi_calculator/Calculator_bmi.dart';
import 'package:bmi_calculator/Icon_content.dart';
import 'package:bmi_calculator/Reusablecard.dart';
import 'package:bmi_calculator/consts.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bouttom_boutton.dart';
import 'round_iconboutton.dart';


enum Gender {
  male,
  famele,
}
int height = 180;
int weight = 60;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecard(
                    onpressed: () {
                      setState(() {
                        selectgender = Gender.male;
                      });
                    },
                    colour: selectgender == Gender.male
                        ? inactivecardcolour
                        : activecardcolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'male',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    onpressed: () {
                      setState(() {
                        selectgender = Gender.famele;
                      });
                    },
                    colour: selectgender == Gender.famele
                        ? inactivecardcolour
                        : activecardcolour,
                    cardchild: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      lable: 'famale',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reusablecard(
                colour: activecardcolour,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height,",
                      style: LableText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: knumbertextstyle,
                        ),
                        Text(
                          'cm',
                          style: LableText,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xffEB1555),
                        activeTickMarkColor: Colors.white,
                        overlayColor: Color(0x29EB1555),
                        inactiveTrackColor: Color(0xff8D8E98),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablecard(
                    colour: activecardcolour,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: LableText,
                        ),
                        Text(
                          weight.toString(),
                          style: knumbertextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    colour: Color(0xff1D1E33),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: LableText,
                        ),
                        Text(
                          age.toString(),
                          style: knumbertextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundiconbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundiconbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Bouttomboutton(bouttontitle: 'Calculate',
            ontap: ()
            
            {
             Calculatorbrain calc=Calculatorbrain(height: height,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context)
              {

                return Resultpage
                (
                  bmiresult: calc.calculatebmi(),
                  resulttext: calc.getresult(),
                  iterpretation: calc.getinterpretation(),
                  
                  


                );
              }));



            },)
          ],
        ));
  }
}


