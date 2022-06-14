import 'package:flutter/material.dart';
// second tab page
Widget get examples {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("images/calbg3.png"),
        fit:BoxFit.cover),        
      ),
    child:ListView(
    children: const <Widget>[
      Card(
       color: Colors.blue ,
      child:ListTile(
        title: Text('Add Numbers'),
        leading:CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/plus.png")),
        ),
        subtitle: Text("Ex. 4.0+5.0=9.0, 3.4+6.8=10.2"),
        textColor: Colors.white,        
      )),
      Card(
        color: Colors.blue ,
      child:ListTile(
        title: Text('Subtract Numbers'),
        leading:CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/minus.png")),
        ),
        subtitle: Text("Ex. 6.0-5.0=1.0, 13.4-6.8=6.6, 5.3-7.2=-1.9"),
        textColor: Colors.white, 
      )),
      Card(
        color: Colors.blue ,
      child:ListTile(
        title: Text('Multiply Numbers'),
        leading:CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/multiply.png")),
        ),
        subtitle: Text("Ex. 6.0 x 5.0=30.0, 13.4 x 6.8=91.12"),
        textColor: Colors.white, 
      )),
      Card(
        color: Colors.blue ,
        child: ListTile(
        title: Text('Divide Numbers'),
        leading:CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/divide.png")),
        ),
        subtitle: Text("Ex. 6.0 / 5.0=1.2, 13.4 / 6.8=1.970"),
        textColor: Colors.white, 
      )),
      Card(
        color: Colors.blue ,
        child: ListTile(
        title: Text('Calculate Percentage'),
        leading:CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/percentage.png")),
        ),
        subtitle: Text("Ex. 2%=0.02, 2+3%=2.06, 5-3%=4.85"),
        textColor: Colors.white, 
      )),
      Card(
        color: Colors.blue ,
        child: ListTile(
        title: Text('Press ='),
        leading:Icon(Icons.calculate,color: Colors.white,),
        subtitle: Text("To get result of calcutaion."),
        textColor: Colors.white, 
      )),
      Card(
        color: Colors.black ,
        child: ListTile(
        title: Text('Press C'),
        leading:Icon(Icons.delete,color: Colors.white,),
        subtitle: Text("Clear variables and data."),
        textColor: Colors.white, 
      ))     
    ],
  ));
}
