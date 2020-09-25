import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() {
  runApp(MyApp());
}

TextStyle kOptionStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/background.png'),
              ),
            ),
            child: MainScreen(),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  StoryBrain _storyBrain;

  @override
  void initState() {
    _storyBrain = new StoryBrain();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              '${_storyBrain.getStoryTitle()}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            setState(() {
              _storyBrain.nextStory(1);
            });
          },
          child: Text(
            '${_storyBrain.getChoice1()}',
            style: kOptionStyle,
          ),
          fillColor: Colors.redAccent,
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
          visible: _storyBrain.isVisible(),
          child: RawMaterialButton(
            onPressed: () {
              setState(() {
                _storyBrain.nextStory(2);
              });
            },
            fillColor: Colors.blueAccent,
            child: Text(
              '${_storyBrain.getChoice2()}',
              style: kOptionStyle,
            ),
          ),
        ),
      ],
    );
  }
}
