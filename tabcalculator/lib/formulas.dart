import 'package:flutter/material.dart';
//third tab page
Widget get formulas {
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
        title: Text('Triangle'),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/triangle.png")),
        ),
        subtitle: Text("Area = A = ½ (base x height) square units\nHypotenuse = √(base² + Perpendicular²)"),
        textColor: Colors.white,        
      )),
      Card(
        color: Colors.blue ,
      child:ListTile(
        title: Text('Rectangle'),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/rectangle.png")),
        ),
        subtitle: Text("Area = (Length x Breadth) square units\nPerimeter = 2(Length + Width) square units"),
        textColor: Colors.white,
      )),
      Card(
        color: Colors.blue ,
      child:ListTile(
        title: Text('Circle'),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/circle.png")),
        ),
        subtitle: Text("Area = π x r\u00B2, where 'r' is the radius\nCircumference of the Circle = 2πr"),
        textColor: Colors.white,
      )),
      Card(
        color: Colors.blue ,
        child: ListTile(
        title: Text('Sphare'),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image(image: AssetImage("images/sphare.png")),
        ),
        subtitle: Text("Surface area = 4πr\u00B2 \nVolume of sphere = 4/3 πr\u00B3"),
        textColor: Colors.white,
      ))
    ],
  ));
}
