import 'package:flutter/material.dart';
import 'package:quizzada/data/models/quiz.dart';
import 'package:quizzada/ui/core/shared/widgets/quiz_cover.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/utils/formatters.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({super.key, required this.quiz, required this.onTap});

  final Quiz quiz;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(QzRadius.lg),
      side: const BorderSide(color: QzColors.borderSubtle),
    );

    return Material(
      color: QzColors.bgSurface,
      shape: shape,
      child: InkWell(
        customBorder: shape,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            QzSpace.s12,
            QzSpace.s12,
            QzSpace.s16,
            QzSpace.s12,
          ),
          child: Row(
            children: [
              QuizCover(image: quiz.cover),
              const SizedBox(width: QzSpace.s16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${quiz.category} · ${quiz.questionCount} perguntas'
                          .toUpperCase(),
                      style: QzText.overline.copyWith(
                        color: QzColors.textMuted,
                      ),
                    ),
                    const SizedBox(height: QzSpace.s4),
                    Text(
                      quiz.title,
                      style: QzText.titleS,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: QzSpace.s4),
                    Text(
                      Formatters.playCount(quiz.playCount),
                      style: QzText.bodyS.copyWith(
                        color: QzColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: QzSpace.s16),
              const Icon(
                Icons.chevron_right,
                size: 20,
                color: QzColors.textMuted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
