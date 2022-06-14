import 'package:flutter/material.dart';
import 'package:tabcalculator/calbuttons.dart';
import 'caldata.dart';

// create calculator button pannel widget.

List<Widget> rowsetup(BuildContext context, TextEditingController myCtrl, CalData mydata) {
  
  // button array
  List<Widget> vcbtn=calbuttons(context, myCtrl, mydata);
  List<Widget> lwb0 =[],lwb1 =[],lwb2 =[],lwb3 =[],lwb4=[],lwb5 =[];
  // create button pair for row
  lwb0.insertAll(0, vcbtn.getRange(1,4));// add 1 row button 1,2,3
  lwb1.insertAll(0,vcbtn.getRange(4,7));// add 2 row button 4,5,6
  lwb2.insertAll(0,vcbtn.getRange(7,10));//add 3 row button 7,8,9
  lwb3.insert(0, vcbtn.elementAt(0)); // add single element 4 row button 0
  lwb3.insertAll(1,vcbtn.getRange(10,12)); // add 4 row button . and %
  lwb4.insertAll(0,vcbtn.getRange(14,17)); // add 5 row button +,- and *
  lwb5.insert(0,vcbtn.elementAt(17));// add single emement 6 row button /
  lwb5.insertAll(1,vcbtn.getRange(12,14));// add 6 row button = & c
  // create row setup array
  List<Widget> lwbr =[];
  //first row
  lwbr.insert(0,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb0));
  // add sizebox for gap
  lwbr.insert(1,const SizedBox(height: 10));
  // second row
  lwbr.insert(2,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb1));
  // add sizebox for gap  
  lwbr.insert(3,const SizedBox(height: 10));
  // third row
  lwbr.insert(4,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb2));
  // add sizebox for gap  
  lwbr.insert(5,const SizedBox(height: 10));
  // forth row
  lwbr.insert(6,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb3));
  // add sizebox for gap  
  lwbr.insert(7,const SizedBox(height: 10));
  //fifth row
  lwbr.insert(8,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb4));
  // add sizebox for gap  
  lwbr.insert(9,const SizedBox(height: 10));
  // sixth row
  lwbr.insert(10,Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:lwb5));

  return (lwbr);
}
