import 'package:flutter/material.dart';
//import 'questions.dart';

void main() => runApp(MaterialApp(
      home: Quizzler(),
    ));

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];
  List question = [
    'you can walk cow down stairs not upstairs',
    'the blood slug is green',
    'would you be surprised if you can complete this challange'
  ];
  List<bool> answers = [true, false, true];
  int questionNumber = 0;

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
                    question[questionNumber],
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
                    bool correct = answers[questionNumber];
                    if (correct == true) {
                      print('correct');
                    } else {
                      print('try again');
                    }
                    setState(() {
                      setState(() {
                        questionNumber += 1;
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
                    bool correct = answers[questionNumber];
                    if (correct == false) {
                      print('correct');
                    } else {
                      print('try again');
                    }
                    setState(() {
                      questionNumber += 1;
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
