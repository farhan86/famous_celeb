import 'package:famous_celeb/celebrity.dart';
import 'package:flutter/material.dart';

import 'question.dart';
import 'answers.dart';
import 'celebrity.dart';
import 'dart:math';

class QuizBrain {
  int _questionNumber = 0;
  int _goodAnswerNumber = 0;
  int _badAnswerNumber = 0;
  int _goodChoice = 0;
  int _badChoice = 0;
  int _locator = 0;
  String _celebrityName = 'choda';
  String _celebrityImage = 'assets/images/ggg.jpg';
  String _celebrityDescription = 'baal';
  Random random = new Random();

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

  List<Celebrity> _goodCelebrity = [
    Celebrity('Keka Ferdousi', 'assets/images/keka.jpg',
        'Apnar Noodles khub pochondo'),
    Celebrity('Mahfuzur Rahman', 'assets/images/mahfuz.jpg',
        'Apnar Gaaner gola khub bhalo'),
  ];

  List<Celebrity> _badCelebrity = [
    Celebrity('Donald Trump', 'assets/images/donald.jpg', 'I Won The Election'),
    Celebrity('Ananta Jalil', 'assets/images/jalil.jpg',
        'Oshombhob k Shombhob korai apnar kaj'),
  ];

  void calculateResult() {
    if (_goodChoice > _badChoice) {
      _locator = random.nextInt(getGoodCelebrityLength());
      _celebrityName = getGoodCelebrityName(_locator);
      _celebrityImage = getGoodCelebrityImage(_locator);
      _celebrityDescription = getGoodCelebrityDescription(_locator);
      print('good celeb');
    } else {
      _locator = random.nextInt(getBadCelebrityLength());
      _celebrityName = getBadCelebrityName(_locator);
      _celebrityImage = getBadCelebrityImage(_locator);
      _celebrityDescription = getBadCelebrityDescription(_locator);
      print('bad celeb');
    }
  }

  String getCelebrityName() {
    return _celebrityName;
  }

  String getCelebrityImage() {
    return _celebrityImage;
  }

  String getCelebrityDescription() {
    return _celebrityDescription;
  }

  int getGoodCelebrityLength() {
    return _goodCelebrity.length;
  }

  int getBadCelebrityLength() {
    return _badCelebrity.length;
  }

  String getBadCelebrityDescription(int i) {
    return _badCelebrity[i].description;
  }

  String getBadCelebrityName(int i) {
    return _badCelebrity[i].name;
  }

  String getBadCelebrityImage(int i) {
    return _badCelebrity[i].image;
  }

  String getGoodCelebrityDescription(int i) {
    return _goodCelebrity[i].description;
  }

  String getGoodCelebrityName(int i) {
    return _goodCelebrity[i].name;
  }

  String getGoodCelebrityImage(int i) {
    return _goodCelebrity[i].image;
  }

  int getGoodChoiceNumber() {
    return _goodChoice;
  }

  int getBadChoiceNumber() {
    return _badChoice;
  }

  void incrementGoodChoice() {
    _goodChoice++;
    print('good choice: $_goodChoice');
  }

  void incrementBadChoice() {
    _badChoice++;
    print('bad choice: $_badChoice');
  }

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
      _goodChoice = 0;
      _badChoice = 0;
    }
  }
}
