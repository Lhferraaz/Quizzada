import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(QzRadius.md),
      side: const BorderSide(color: QzColors.borderStrong),
    );

    return SizedBox(
      height: 56,
      child: Material(
        color: QzColors.bgRaised,
        shape: shape,
        child: InkWell(
          customBorder: shape,
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                width: 20,
                height: 20,
                semanticLabel: 'Google',
              ),
              const SizedBox(width: QzSpace.s12),
              Text(
                'Continuar com Google',
                style: QzText.labelL.copyWith(color: QzColors.textPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
