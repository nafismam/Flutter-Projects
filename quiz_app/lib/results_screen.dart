// questions.summart
// Text(((data['question_index'] as int) + 1).toString()),


import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/question_summary.dart';
//import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget{

  const ResultsScreen({super.key,required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < chosenAnswers.length; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]

      });
    }

    return summary;

  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {

      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions  out of $numTotalQuestions questions correctly!'),
            SizedBox(height: 30,),
            QuestionsSummary(summaryData),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {}, 
              child: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}