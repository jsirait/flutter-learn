import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      title: "Wellesley DSC Flutter App yay",
      home: MyAppSF()));
}


class MyAppSL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Funky Hello World"),
            backgroundColor: Colors.pinkAccent),
        body: Center(
            child: Text("Hello World :D !",
                style: TextStyle(fontSize: 55.0))));
  }
}

class MyAppSF extends StatefulWidget {
  @override
  _MyAppSFState createState() {
    return _MyAppSFState();
  }
}

class _MyAppSFState extends State<MyAppSF> {
  Color bgColor = Colors.pink[200];

  void changeBGColor() {
    setState(() {
      bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
            title: Text("Funky Hello World"),
            backgroundColor: Colors.pinkAccent),
        body: Center(
            child: Text("Hello World :D !",
                style: TextStyle(fontSize: 55.0))),
        floatingActionButton:
        MaterialButton(
            onPressed: changeBGColor,
            child: Text("Change Color!"),
            color: Colors.green));
  }
}