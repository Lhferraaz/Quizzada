import 'package:quizzada/data/services/quiz_service.dart';

/// Quizzes de mentira, no mesmo formato que o servidor vai mandar na Fase 2.
class FakeQuizService implements QuizService {
  @override
  Future<List<Map<String, dynamic>>> fetchQuizzes() async {
    await Future.delayed(const Duration(seconds: 1));
    throw Exception('Sem internet');
    return [
      {
        'id': 'widgets-do-flutter',
        'title': 'Widgets do Flutter',
        'category': 'Flutter',
        'questionCount': 10,
        'playCount': 2400,
        'cover': 'assets/images/capa-widgets-do-flutter.png',
      },
      {
        'id': 'dart-sem-medo',
        'title': 'Dart sem medo',
        'category': 'Dart',
        'questionCount': 12,
        'playCount': 1800,
        'cover': 'assets/images/capa-dart-sem-medo.png',
      },
      {
        'id': 'firebase-auth',
        'title': 'Firebase Auth na prática',
        'category': 'Firebase',
        'questionCount': 8,
        'playCount': 960,
        'cover': 'assets/images/capa-firebase-auth.png',
      },
      {
        'id': 'cultura-da-ej',
        'title': 'Cultura da EJ',
        'category': 'Geral',
        'questionCount': 15,
        'playCount': 410,
        'cover': 'assets/images/capa-cultura-da-ej.png',
      },
    ];
  }
}