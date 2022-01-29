import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [{
      'questionText': '\n \n \n \n TRIVIA TIME',
      'answers': [
        {'text': 'Start', 'score': 0},
      ],
    },
    {
      'questionText': 'Solve short fun quizzes specifically designed to enhance your general knowledge and IQ \n The quiz comprises a total of 10 questions,with each question having 4 options.\nFor each correctly selected option you will be awarded 1 point.',
      'answers': [
        {'text': 'Click To Play', 'score': 0},
      ],
    },
    {
      'questionText': "Which is the world's most expensive spice?",
      'answers': [
        {'text': 'Turmeric', 'score': 0},
        {'text': 'Clove', 'score': 0},
        {'text': 'Saffron', 'score': 1},
        {'text': 'Vanilla', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is not declared as one of the 7 Wonders of the Wold?',
      'answers': [
        {'text': 'The Grand Canyon', 'score': 1},
        {'text': 'The Eiffel Tower', 'score': 0},
        {'text': 'The Leaning Tower of Pisa', 'score': 0},
        {'text': 'The Taj Mahal', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the French word for "Hello"?',
      'answers': [
        {'text': 'Hola', 'score': 0},
        {'text': 'Hi', 'score': 0},
        {'text': 'Salut', 'score': 1},
        {'text': 'Bonjour', 'score': 0},
      ],
    },
    {
      'questionText': 'Which sea creature has three hearts?',
      'answers': [
        {'text': 'Octopus', 'score': 1},
        {'text': 'Sea Horse', 'score': 0},
        {'text': 'Shark', 'score': 1},
        {'text': 'Whale', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is not an unit of Temperature?',
      'answers': [
        {'text': 'Celsius', 'score': 0},
        {'text': 'Kelvin', 'score': 0},
        {'text': 'Fahrenheit', 'score': 0},
        {'text': 'Watt', 'score': 1},
      ],
    },
    {
      'questionText': 'How many teeth do adults have?',
      'answers': [
        {'text': '35', 'score': 0},
        {'text': '22', 'score': 0},
        {'text': '32', 'score': 1},
        {'text': '30', 'score': 0},
      ],
    },
    {
      'questionText': 'What year was Pluto declared a Dwarf Planet?',
      'answers': [
        {'text': ' 2006', 'score': 1},
        {'text': '1997', 'score': 0},
        {'text': '2000', 'score': 1},
        {'text': '1990', 'score': 0},
      ],
    },
    {
      'questionText': 'Why is Potassium Permanganate added to drinking water?:',
      'answers': [
        {'text': 'It is an acidic crystal', 'score': 0},
        {'text': 'It is a sterilizing agent', 'score': 0},
        {'text': 'It is an oxidizing agent', 'score': 1},
        {'text': 'It is a reducing agent', 'score': 0},
      ],
    },
    {
      'questionText': 'The Python programming language was developed by:',
      'answers': [
        {'text': ' Guido van Rossum', 'score': 1},
        {'text': 'Bjarne Stroustrup', 'score': 0},
        {'text': 'Yukihiro Matsumoto', 'score': 0},
        {'text': 'Lars Bak', 'score': 0},
      ],
    },
    {
      'questionText': 'The first Person to step foot on the moon was:',
      'answers': [
        {'text': "Neil d'Grasse Tyson", 'score': 0},
        {'text': 'Sunita Williams', 'score': 0},
        {'text': 'Neil Armstrong', 'score': 1},
        {'text': 'Buzz Aldrin', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF09EEF6),
        appBar: AppBar(
          title: Text('Trivia Time'),
          backgroundColor: Color(0xFF0C10EF),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
