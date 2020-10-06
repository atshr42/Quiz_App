import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  bool gamelost = false;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      gamelost = false;
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText':
          'Volume of Sphere is given by the formula :-\n (गोलाको कोल्यूम गणना गर्न सूत्र हो)  khaja k khane',
      'answers': [
        {'text': '4/5πr^3', 'score': 0},
        {'text': '4/3 πr^3', 'score': 1},
        {'text': '1/4πr^3', 'score': 0},
        {'text': 'πr^3', 'score': 0},
      ],
    },
    {
      'questionText':
          'which is the nearest Star from our planet?\n (हाम्रो ग्रहबाट नजिकको तारा हो)',
      'answers': [
        {'text': 'Moon(चन्द्रमा)', 'score': 0},
        {'text': 'Sun(सूर्य)', 'score': 1},
        {'text': 'Son(छोरा)', 'score': 0},
        {'text': 'Milky Way(मिल्की वे)', 'score': 0}
      ],
    },
    {
      'questionText': 'what is the Area of Nepal?\n नेपालको कुल क्षेत्र हो',
      'answers': [
        {'text': '1,47,181(१,४७,१1१) sqkm', 'score': 1},
        {'text': '100000(१,००,०००) sqkm', 'score': 0},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
      if (score == 0) {
        gamelost = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('let\'s play Quiz'),
      ),
      body: _questionIndex < _questions.length && gamelost == false
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore, resetQuiz),
    ));
  }
}
