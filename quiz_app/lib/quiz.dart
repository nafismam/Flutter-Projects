


import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}


class  _QuizState extends State<Quiz>{

  // Widget? activeScreen; //eta call disi

  // //initstate
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';
  List<String>  selectedAnswers = [];

  
  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }


  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        //selectedAnswers = []; 
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {

    // final screenWidget = activeScreen == 'start-screen'
    //         ? StartScreen(switchScreen) 
    //         : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
        screenWidget =   QuestionsScreen(
          onSelectAnswer: chooseAnswer,);
    }

    if(activeScreen == 'results-screen'){
      screenWidget =  ResultsScreen(chosenAnswers: selectedAnswers,);
    }

    //screenWidget = QuestionsScreen();

    return MaterialApp(
      home:
      Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 1, 27, 73),
                const Color.fromARGB(255, 93, 148, 244),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget, //call disi
        ),
      ), 
    );
    
  }
}