import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzada/data/models/quiz.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_avatar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/ui/home/view_models/home_view_model.dart';
import 'package:quizzada/ui/home/widgets/join_game_card.dart';
import 'package:quizzada/ui/home/widgets/quiz_card.dart';
import 'package:quizzada/utils/formatters.dart';

const _sampleQuiz = Quiz(
  id: 'widgets-do-flutter',
  title: 'Widgets do Flutter',
  category: 'Flutter',
  questionCount: 10,
  playCount: 2400,
  cover: 'assets/images/capa-widgets-do-flutter.png',
);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _showSoon(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzes = ref.watch(HomeViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            QzSpace.s20,
            QzSpace.s12,
            QzSpace.s20,
            QzSpace.s24,
          ),
          children: [
            const _Header(),
            const SizedBox(height: QzSpace.s24),
            JoinGameCard(
              onPinPressed: () =>
                  _showSoon(context, 'A tela PIN chega na Etapa 5'),
            ),
            const SizedBox(height: QzSpace.s32),
            quizzes.when(
              loading: () => const _Loading(),
              error: (error, StackTrace) => const Text('Deu erro'),
              data: (list) => _QuizList(
                quizzes: list,
                onQuizTap: (quiz) =>
                    _showSoon(context, 'Em breve: {$quiz.title}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Formatters.weekdayAndDate(DateTime.now()).toUpperCase(),
                style: QzText.overline.copyWith(color: QzColors.textMuted),
              ),
              Text('E aí, Bia?', style: QzText.titleL),
            ],
          ),
        ),
        QzAvatar(initials: 'BR', color: QzColors.gameC),
      ],
    );
  }
}

/// "Quizzes para jogar" e a contagem, à direita.
class _ListTitle extends StatelessWidget {
  const _ListTitle({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quizzes para jogar', style: QzText.titleM),
        Text(
          '$count quizzes',
          style: QzText.numS.copyWith(color: QzColors.textMuted),
        ),
      ],
    );
  }
}

/// O título da lista e um card para cada quiz.
class _QuizList extends StatelessWidget {
  const _QuizList({required this.quizzes, required this.onQuizTap});

  final List<Quiz> quizzes;
  final ValueChanged<Quiz> onQuizTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ListTitle(count: quizzes.length),
        const SizedBox(height: QzSpace.s16),
        for (final quiz in quizzes) ...[
          QuizCard(quiz: quiz, onTap: () => onQuizTap(quiz)),
          const SizedBox(height: QzSpace.s12),
        ],
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: QzSpace.s40),
      child: Center(
        child: CircularProgressIndicator(color: QzColors.textPrimary),
      ),
    );
  }
}
