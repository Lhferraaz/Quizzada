import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'ENTRAR',
              style: QzText.overline.copyWith(color: QzColors.textMuted),
            ),
          ],
        ),
      ),
    );
  }
}
