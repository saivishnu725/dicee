import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Dicee App',
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    ),
  );
}

// List name = [
//   'assets/dice1.png',
//   'assets/dice2.png',
//   'assets/dice3.png',
//   'assets/dice4.png',
//   'assets/dice5.png',
//   'assets/dice6.png'
// ];
int dice1 = 1;
int dice2 = 2;

class DiceApp extends StatefulWidget {
  // DiceApp({Key key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset(
                  // '${name[dice1]}',
                  'assets/dice$dice1.png',
                ),
                onPressed: () {
                  setState(() {
                    var rg = Random();
                    dice1 = rg.nextInt(6) + 1;
                    debugPrint('1 is $dice1');
                  });
                },
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: TextButton(
                child: Image.asset(
                  // '${name[dice2]}',
                  'assets/dice$dice2.png',
                ),
                onPressed: () {
                  setState(() {
                    var rg = Random();
                    dice2 = rg.nextInt(6) + 1;
                    debugPrint('2 is $dice2');
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
