import 'question.dart';
import 'answers.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _goodAnswerNumber = 0;
  int _badAnswerNumber = 0;

  List<Question> _questionBank = [
    Question('Dhele diben naki diben na? (Would you pour it or not?)'),
    Question(
        'Koy takar icecream khaben? (How much would you pay for an icecream?)'),
    Question('Kaua mori gese naki beche ase? (is the crow dead or not?)'),
    Question(
        'Kotogula photo akdine tulben? (how many photos would you take in a day?)'),
    Question('Kibhabe spell korben? (which spelling would you choose?)'),
  ];

  List<Answers> _goodAnswer = [
    Answers('Dhele dibo (I\'ll pour it)'),
    Answers('Corona te no icecream (no ice cream during corona)'),
    Answers('Aah?'),
    Answers('3'),
    Answers('Shiet'),
  ];

  List<Answers> _badAnswer = [
    Answers('Dhele dibona (I won\'t pour it)'),
    Answers('1 dollar'),
    Answers('Android phone ar ...'),
    Answers('69420'),
    Answers('Shit'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void nextGoodAnswer() {
    if (_goodAnswerNumber < _goodAnswer.length - 1) {
      _goodAnswerNumber++;
    }
  }

  void nextBadAnswer() {
    if (_badAnswerNumber < _badAnswer.length - 1) {
      _badAnswerNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getGoodAnswerText() {
    return _goodAnswer[_goodAnswerNumber].questionAnswer;
  }

  String getBadAnswerText() {
    return _badAnswer[_badAnswerNumber].questionAnswer;
  }

  // bool getCorrectAnswer() {
  //   return _questionBank[_questionNumber].questionAnswer;
  // }
  int getQnumber() {
    return _questionNumber;
  }

  int getQbankL() {
    return _questionBank.length;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void checkFinished() {
    if (isFinished() == true) {
      print('End of quiz');
      print(_questionNumber);
      print(_questionBank.length);
    }
  }

  void reset() {
    if (isFinished() == true) {
      _questionNumber = 0;
      _goodAnswerNumber = 0;
      _badAnswerNumber = 0;
    }
  }
}
