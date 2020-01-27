import 'package:flutter/material.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(MaterialApp(
      home: Quizzler(),
    ));

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                  color: Colors.green,
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    bool correct = quizBrain.getAnswer();
                    if (correct == true) {
                      print('correct');
                    } else {
                      print('try again');
                    }
                    setState(() {
                      setState(() {
                        quizBrain.nextQuestion();
                      });
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'False',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    bool correct = quizBrain.getAnswer();
                    if (correct == false) {
                      print('correct');
                    } else {
                      print('try again');
                    }
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                  },
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check, color: Colors.green),
                Icon(Icons.close, color: Colors.red)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
