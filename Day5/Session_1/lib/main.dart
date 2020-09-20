import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Question {
  String q;
  bool a;
  Question({this.q, this.a});
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Question> questionBank = [
    Question(q: 'cow flies', a: false),
    Question(q: 'horse dances', a: false),
    Question(q: 'Elon goes brrr', a: true),
  ];
  List<Icon> icons = [];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Question No ${questionNumber + 1}',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  questionNumber >= questionBank.length
                      ? '${questionBank[questionBank.length - 1].q}'
                      : '${questionBank[questionNumber].q}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            if (questionNumber < questionBank.length) {
                              if (questionBank[questionNumber].a == true)
                                icons.add(Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ));
                              else
                                icons.add(Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ));
                              questionNumber++;
                            }
                          });
                        },
                        child: Text('True'),
                        color: Colors.green,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            if (questionNumber < questionBank.length) {
                              if (questionBank[questionNumber].a == false)
                                icons.add(Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ));
                              else
                                icons.add(Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ));
                              questionNumber++;
                            }
                          });
                        },
                        child: Text('False'),
                        color: Colors.red,
                      ),
                      Row(
                        children: icons,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
