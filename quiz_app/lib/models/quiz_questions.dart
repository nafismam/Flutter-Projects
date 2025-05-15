

class QuizQuestion {


  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //chaining kore old the untouched new copied list is shuffled
    
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
