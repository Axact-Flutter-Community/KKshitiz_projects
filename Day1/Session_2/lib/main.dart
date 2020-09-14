import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day 1 : Session - 2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://media-exp1.licdn.com/dms/image/C560BAQGBYyy9FpwIXQ/company-logo_200_200/0?e=2159024400&v=beta&t=KBDjq1jdg9pxMic8tEvpKFo2qFT_HGA-T4068UVqBls',
                scale: 0.75,
              ),
              Text(
                'Axact Studios',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                'Design. Code. Create.',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
