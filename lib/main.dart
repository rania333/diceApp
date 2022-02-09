// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 169, 250),
      appBar: AppBar(
        title: const Text('Dice App'),
        backgroundColor: Color.fromARGB(255, 120, 8, 139),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myvar = 1;
  int myvar2 = 6;
  int sum = 0;
  void clickHandler() {
    myvar2 = Random().nextInt(6) + 1;
    myvar = Random().nextInt(6) + 1;
    sum = myvar + myvar2;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      clickHandler();
                    });
                  },
                  child: Image.asset('pic/dice$myvar.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      clickHandler();
                    });
                  },
                  child: Image.asset('pic/dice$myvar2.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'you get $sum',
                style: const TextStyle(
                    color: Color.fromARGB(255, 120, 8, 139),
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
