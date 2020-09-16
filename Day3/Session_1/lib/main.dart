import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _firstDiceNumber = 1;
  int _secondDiceNumber = 6;
  String _winnerText = 'Tap Dice';

  void setWinner() {
    if (_firstDiceNumber > _secondDiceNumber)
      _winnerText = 'Left wins!';
    else if (_firstDiceNumber < _secondDiceNumber)
      _winnerText = 'Right wins!';
    else
      _winnerText = 'It\'s a draw';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context)
          .copyWith(accentColor: Colors.red, primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dice App'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _winnerText,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            _firstDiceNumber = random.nextInt(6) + 1;
                            _secondDiceNumber = random.nextInt(6) + 1;
                            setWinner();
                          });
                        },
                        child: Image.asset('assets/dice$_firstDiceNumber.png')),
                  ),
                  Expanded(
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            _firstDiceNumber = random.nextInt(6) + 1;
                            _secondDiceNumber = random.nextInt(6) + 1;
                            setWinner();
                          });
                        },
                        child:
                            Image.asset('assets/dice$_secondDiceNumber.png')),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
