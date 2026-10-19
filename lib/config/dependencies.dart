import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzada/data/repositories/quiz_repository.dart';
import 'package:quizzada/data/services/fakes/fake_quiz_services.dart';
import 'package:quizzada/data/services/quiz_service.dart';

final quizServiceProvider = Provider<QuizService>((ref) => FakeQuizService());

final quizRepositoryProvider = Provider<QuizRepository>((ref) => QuizRepository(ref.watch(quizServiceProvider)));