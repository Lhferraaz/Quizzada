import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: 102,
                height: 102,
                semanticLabel: 'Logo do Quizzada',
              ),
              const SizedBox(height: QzSpace.s32),
              Text('quizzada', style: QzText.displayL),
              const SizedBox(height: QzSpace.s12),
              Text(
                'Quiz bom é quiz ao vivo.',
                style: QzText.bodyL.copyWith(color: QzColors.textSecondary),
              ),
              const Spacer(),
              Text(
                'CAPACITAÇÃO MOBILE · V1.0',
                style: QzText.overline.copyWith(color: QzColors.textMuted),
              ),
              const SizedBox(height: QzSpace.s24),
            ],
          ),
        ),
      ),
    );
  }
}