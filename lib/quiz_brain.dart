import 'Questions.dart';

class Quizbrain {
  final List<Question> _questions = [
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', questionAnswer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  ];

  int _currentQuestionIndex = 0;

  String getQuestionText() {
    return _questions[_currentQuestionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_currentQuestionIndex].questionAnswer;
  }

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
    }
  }

  bool isFinished() {
    return _currentQuestionIndex >= _questions.length - 1;
  }

  void reset() {
    _currentQuestionIndex = 0;
  }
}
