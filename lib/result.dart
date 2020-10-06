import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Quiz Ended , And you have answered total :- ';
    resultText += resultScore.toString() +
        ' ,Questoions Sucessfully. ' +
        'प्रश्नोत्तरी समाप्त भयो, र तपाईंले कुल जवाफ ' +
        resultScore.toString() +
        ' प्रश्नको दिनुभयो';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    print('i am from result');
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          FlatButton(
            child: Text('Restart Quiz\n(प्रश्नोत्तरी पुन: सुरु गर्नुहोस्)',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
