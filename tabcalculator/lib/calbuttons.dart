

import 'package:tabcalculator/caldata.dart';
import 'package:flutter/material.dart';

List<Widget> calbuttons(BuildContext context,TextEditingController myCtrl,CalData mydata){
  List<String> sbnm=[".","%","=","c","+","-","x","/"];
  String iBStr="";
  Color clrBtn=Colors.black;
  List<Widget> calBtn=[];//create button widget array
  int iT=0;

  // function for calculation percentage
  void calpercentage() {
    if (myCtrl.text != '') {
      mydata.dno = double.parse(myCtrl.text);
      if (mydata.snumoptr != '%' && mydata.snumoptr != '') {
        if (mydata.snumoptr == '+' || mydata.snumoptr == '-') {
          mydata.dno = (mydata.dno * mydata.dres) / 100;
        } else if (mydata.snumoptr == '*' || mydata.snumoptr == '/') {
          mydata.dno =
              (mydata.snumoptr == '*') ? mydata.dno / 100 : mydata.dno * 100;
        }
        
        mydata.startCalculation();
        mydata.snumoptr = "";
        myCtrl.text = mydata.dres.abs().toString();
      } else {
        mydata.dno /= 100;
        mydata.dres = mydata.dno;
      }
    }
  }
  //function for clear and equal operation
  void calce(String sopr){
      switch(sopr){
          case "=":
              mydata.startCalculation();
              myCtrl.text = mydata.dres.toString();
              mydata.dno=mydata.dres;
              mydata.snumoptr = "=";
              mydata.currActionCount=0;
          break;        
          case "C":
            mydata.calclear();
            myCtrl.text = "0";
          break;
      }
  }
  // create buttons for calculator
  for(int iL=0;iL<18;iL++)
  {
    iBStr=iL.toString();
    if(iL>9){
    iBStr=sbnm.elementAt((iT));
    iT=iT+1;
    clrBtn=(iBStr==".")?Colors.black:Colors.green;
    }
    calBtn.insert(iL,TextButton(
      onPressed: () {
          if(mydata.snumoptr=="="){
            mydata.snumoptr="";
            myCtrl.text='0'; 
          }
          if(mydata.currActionCount==1){
            mydata.currActionCount=0;
            mydata.dres=mydata.dno;
            myCtrl.text='';                        
          }        
        if (iL >= 0 && iL < 11) {
          if(myCtrl.text=="0"){
            myCtrl.text='';
          }
          if (myCtrl.text != '') {
            myCtrl.text += (iL==10)?".":iL.toString();
          } else {
            myCtrl.text = (iL==10)?"0.":iL.toString();
          }
          if(myCtrl.text!=''){
            mydata.dno = double.parse(myCtrl.text);
          }

        }else{
          // action by pressing on +,-,x,/ or =/C 
          mydata.currActionCount+=1;
          
          switch(iL){
            case 11://'calculate percent(%)'
            calpercentage();
            break;             
            case 12://'calcualte result'
            calce("=");
            break;
            case 13://'clear all C'
            calce("C");
            break;            
            case 14://'operator
            mydata.snumoptr="+";
            break;
            case 15://'operator -'
            mydata.snumoptr="-";
            break;
            case 16://'operator *'
            mydata.snumoptr="*";
            break;
            case 17://'operator /'
            mydata.snumoptr="/";
            break;
          }
        }        
        
      },
      child: Text(iBStr,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35)),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(1.0)),
        backgroundColor:
            MaterialStateProperty.all<Color>(clrBtn),
        foregroundColor:
            MaterialStateProperty.all<Color>(Colors.white),
      ),
    ));
  }
  return calBtn;
  
}