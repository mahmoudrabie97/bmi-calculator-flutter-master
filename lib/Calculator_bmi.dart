import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculatorbrain
{
Calculatorbrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatebmi()
{
   _bmi=weight/pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
}
String getresult()
{
  if(_bmi>=25)
  {
    return('overweight ');
  }
  else if(_bmi>18.5)
  {
    return('Normal');
  }
  else 
  return('Under weight');
}
String getinterpretation()
{
  if(_bmi>=25)
  {
    return('  وزنك زايد يلزمك بعض التمارين  ');
  }
  else if(_bmi>18.5)
  {
    return(' وزنك مثالي عمل رائع ');
  }
  else 
  return(' وزنك اقل من  الطبيعي يجب عليك ان تاكل اكثر   ');

}
}
