import 'package:quizzada/data/models/quiz.dart';
import 'package:quizzada/data/services/quiz_service.dart';

class QuizRepository {
  QuizRepository(this._service);

  final QuizService _service;

  Future<List<Quiz>> getQuizzes() async {
    final maps = await _service.fetchQuizzes();
    return maps.map(Quiz.fromMap).toList();
  }
}