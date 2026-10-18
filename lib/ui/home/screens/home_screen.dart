import 'package:flutter/material.dart';
import 'package:quizzada/data/models/quiz.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_avatar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showSoon(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
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
            QuizCard(quiz: _sampleQuiz, onTap: () {}),
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
