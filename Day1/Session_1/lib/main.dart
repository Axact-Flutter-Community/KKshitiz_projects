import 'package:flutter/material.dart';

//main is starting point of the app
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day 1 : Session - 1'),
        ),
        body: Center(
          child: Text(
            'Kshitiz Kamal',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
