import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tp_flutter/model/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyQuestion(title: 'Esport Quizz'),
    );
  }
}

class MyQuestion extends StatefulWidget {
  const MyQuestion({super.key, required this.title});

  final String title;

  @override
  State<MyQuestion> createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
  int _counter = 0;
  double score = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 10) {
        _counter = 0;
        score = 0;
      }
    });
  }

  void incrementScore() {
    setState(() {
      score++;
    });
  }

  ElevatedButton customButton(
      {required bool verifyAnswer, required String name}) {
    return ElevatedButton(
        onPressed: () {
          showDialog<String>(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    questionList[_counter].answer == verifyAnswer
                        ? customColumn(
                            reponse: "Réponse correcte",
                            explenation: questionList[_counter].explanation,
                            addPoint: true)
                        : customColumn(
                            reponse: "Réponse fausse",
                            explenation: questionList[_counter].explanation,
                            addPoint: false)
                  ],
                ),
              ),
            ),
          );
          if (questionList[_counter].answer == verifyAnswer) {
            incrementScore();
          }
          ;
        },
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: name == "Vrai" ? Colors.green : Colors.red,
        ));
  }

  Column customColumn(
      {required String reponse,
      required String explenation,
      required bool addPoint}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            reponse,
            style: TextStyle(
              color: addPoint ? Colors.green : Colors.red,
              fontSize: 30,
            ),
          ),
        ),
        addPoint == true
            ? Image.asset("images/assets/oui.gif")
            : Image.asset("images/assets/non.gif"),
        Text(explenation),
        const SizedBox(height: 15),
        TextButton(
            onPressed: () {
              _incrementCounter();
              Navigator.pop(context);
            },
            child: _counter == 9
                ? const Text('Rejouer !', style: TextStyle(color: Color(0xFF101e35)))
                : const Text('Question suivante', style: TextStyle(color: Color(0xFF101e35)))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width100 = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF101e35),
          title: Center(
              child: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RatingBarIndicator(
                  rating: score,
                  itemBuilder: (context, index) => const Icon(
                    Icons.stars,
                    color: Colors.amber,
                  ),
                  itemCount: 10,
                  itemSize: 35.0,
                  direction: Axis.horizontal,
                ),
                Container(
                    width: width100,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF101e35)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Question ${_counter + 1}/${questionList.length}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Image.asset(
                            "images/assets/${questionList[_counter].thumbnail}",
                            fit: BoxFit.cover,
                            width: width100,
                          )),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                questionList[_counter].question,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customButton(verifyAnswer: true, name: "Vrai"),
                    customButton(verifyAnswer: false, name: "Faux")
                  ],
                ),
                LinearProgressIndicator(
                  value: _counter / 10 + 0.1,
                  color: Color(0xFF101e35),
                ),
              ]),
        )));
  }
}
