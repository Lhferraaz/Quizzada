import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_avatar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/utils/formatter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          children: const [_Header()],
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
