import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzada/config/dependencies.dart';
import 'package:quizzada/data/models/quiz.dart';

class HomeViewModel extends AsyncNotifier<List<Quiz>> {
  @override
  Future<List<Quiz>> build() {
    return ref.read(quizRepositoryProvider).getQuizzes();
  }
}

final HomeViewModelProvider = AsyncNotifierProvider<HomeViewModel, List<Quiz>>(
  HomeViewModel.new,
);
