import 'package:flutter/material.dart';
import 'package:tabcalculator/basiccal.dart';
import 'package:tabcalculator/caldata.dart';
import 'package:tabcalculator/examples.dart';
import 'package:tabcalculator/formulas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  final myController = TextEditingController(text: "0");
  final mydata=CalData();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: SizedBox(
            height: 50,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(3.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              width: double.infinity,
              child: const Text("Tab Bar Demo"),
            ),
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            indicatorColor: Colors.lightBlueAccent,
            labelColor: Colors.white,
            tabs: <Widget>[
              //tab widget title and icons
              Tab(icon: Icon(Icons.calculate), text: "Basic"),
              Tab(icon: Icon(Icons.help), text: "Examples"),
              Tab(icon: Icon(Icons.functions), text: "Formulas"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: basiccal(context,myController,mydata)//basic calculator tab widget
              ),
            Center(
              child: examples,// example tab widget
            ),
            Center(
              child: formulas,// formula tab widget
            ),
          ],
        ),
      ),
    );
  }
}
