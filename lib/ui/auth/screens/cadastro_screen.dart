import 'package:flutter/material.dart';
import 'package:quizzada/ui/auth/widgets/avatar_picker_card.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_top_bar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  Color _color = QzColors.gameC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            QzTopBar(
              title: 'Nova Conta',
              onLeadingPressed: () => Navigator.of(context).maybePop(),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                QzSpace.s20,
                QzSpace.s8,
                QzSpace.s20,
                QzSpace.s16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Crie sua conta', style: QzText.displayM),
                  const SizedBox(height: QzSpace.s8),
                  Text(
                    'Leva menos de um minuto. Depois é só entrar numa sala.',
                    style: QzText.bodyL.copyWith(color: QzColors.textSecondary),
                  ),
                  const SizedBox(height: QzSpace.s24),
                  AvatarPickerCard(
                    initials: 'BR',
                    color: _color,
                    onColorChanged: (color) => setState(() => _color = color),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
