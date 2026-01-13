import 'dart:async';
import 'package:flutter/material.dart';

import 'data_quiz/computer_net_quiz.dart';
import 'data_quiz/ehical_hacking_quiz.dart';
import 'data_quiz/java_quiz.dart';
import 'data_quiz/net_security_quiz.dart';
import 'data_quiz/optical_quiz.dart';
import 'data_quiz/os_quiz.dart';
import 'data_quiz/signal_system_quiz.dart';
import 'data_quiz/wireless_com_quiz.dart';
import 'models/subject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubjectListPage(),
    );
  }
}

class SubjectListPage extends StatelessWidget {
  const SubjectListPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Subject> subjects = [
      Subject(name: "Optical Communication", quizzes: opticalQuizzes),
      Subject(name: "Computer Network", quizzes: computerNetworkQuizzes),
      Subject(name: "Java Programming", quizzes: javaProgrammingQuizzes),
      Subject(name: "Operating System", quizzes: operatingSystemQuizzes),
      Subject(name: "Ehical Hacking", quizzes: ethicalHackingQuizzes),
      Subject(name: "Wireless Communication",quizzes: wirelessCommunicationQuizzes ),
      Subject(name: "Signal and System", quizzes: signalAndSystemQuizzes),
      Subject(name: "Network Security", quizzes: networkSecurityBasicQuizzes),
    ];
    //Starter section
    return Scaffold(

      // appBar: AppBar(
      //   title: const Text("Short Quiz of the Subject"),
      //   backgroundColor: Colors.cyanAccent,
      // ),

      body: Center(child: ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        final subject = subjects[index];
        return ListTile(
          title: Text(subject.name),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizPage(subject: subject),
              ),
            );
          },
        );
      },
    ),),

    );
  }
}

class QuizPage extends StatefulWidget {
  final Subject subject;
  const QuizPage({super.key, required this.subject});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  bool _answered = false;
  int? _selectedIndex;
  int _score = 0;
  late Timer _timer;
  int _timeLeft = 15; // seconds per question

  void _answerQuestion(int selectedIndex) {
    setState(() {
      _answered = true;
      _selectedIndex = selectedIndex;
      if (selectedIndex ==
          widget.subject.quizzes[_currentQuestionIndex].correctIndex) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    _timer.cancel(); // stop current timer
    if (_currentQuestionIndex < widget.subject.quizzes.length - 1) {
      setState(() {
        _currentQuestionIndex;
      });
      _startTimer(); // start timer for next question
    } else {
      _finishQuiz();
    }
    if (_currentQuestionIndex + 1 >= widget.subject.quizzes.length) {
      // All questions finished
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text("Quiz Completed!"),
            content: Text(
              "Your total score: $_score/${widget.subject.quizzes.length}",
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // close dialog
                  //Navigator.of(context).pop(); // back to subject list
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        _currentQuestionIndex++;
        _answered = false;
        _selectedIndex = null;
      });
    }
  }

  void _finishQuiz() {
    _timer.cancel(); // stop timer
    Navigator.pop(context, _score); // return score or go back to original page
  }

  void _startTimer() {
    _timeLeft = 15; // reset for each question
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _nextQuestion(); // auto move to next question when time is 0
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    widget.subject.quizzes.shuffle(); // random order of our quiz
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel(); // always cancel timer to avoid memory leaks
    super.dispose();
  }

  //Inside the doing proccess of quiz
  @override
  Widget build(BuildContext context) {
    final quiz = widget.subject.quizzes[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.subject.name} Quiz"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Q${_currentQuestionIndex + 1}: ${quiz.question}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Time Left: $_timeLeft s",
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            //Show the number of quiz referencecs to the totals.
            Text(
              "Question ${_currentQuestionIndex + 1} / ${widget.subject.quizzes.length}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              "Score: $_score",
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 40, 243, 33),
              ),
            ),

            const SizedBox(height: 20),
            ...List.generate(quiz.options.length, (index) {
              Color? cardColor;
              if (_answered) {
                if (index == quiz.correctIndex)
                  cardColor = const Color.fromARGB(255, 77, 228, 82);
                else if (_selectedIndex == index)
                  cardColor = const Color.fromARGB(255, 225, 7, 7);
              }
              return Card(
                color: cardColor,
                child: ListTile(
                  title: Text(quiz.options[index]),
                  onTap: _answered ? null : () => _answerQuestion(index),
                ),
              );
            }),

            const SizedBox(height: 20),
            if (_answered)
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(
                  _currentQuestionIndex + 1 >= widget.subject.quizzes.length
                      ? "Finish Quiz"
                      : "Next Question",
                ),
              ),
          ],
        ),
      ),
    );
  }
}
