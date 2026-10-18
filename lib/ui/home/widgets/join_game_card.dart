import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class JoinGameCard extends StatelessWidget {
  const JoinGameCard({super.key, required this.onPinPressed});

  final VoidCallback onPinPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: QzColors.actionPrimary,
        borderRadius: BorderRadius.circular(QzRadius.xl),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/formas-entrar.png',
              width: 157,
              height: 170,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(QzSpace.s24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TEM UM PIN?',
                  style: QzText.overline.copyWith(color: QzColors.textMuted),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 190,
                  child: Text(
                    'Entrar numa partida',
                    style: QzText.displayM.copyWith(
                      color: QzColors.actionOnPrimary,
                    ),
                  ),
                ),
                const SizedBox(height: QzSpace.s24),
                _PinButton(onPressed: onPinPressed),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PinButton extends StatelessWidget {
  const _PinButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(QzRadius.md),
    );

    return Material(
      color: QzColors.textInverse,
      shape: shape,
      child: InkWell(
        customBorder: shape,
        onTap: onPressed,
        child: SizedBox(
          height: 52,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: QzSpace.s16),
            child: Row(
              children: [
                const Icon(Icons.tag, size: 20, color: QzColors.textSecondary),
                Expanded(
                  child: Text(
                    'Digitar o PIN da sala',
                    style: QzText.bodyMStrong.copyWith(
                      color: QzColors.textSecondary,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: QzColors.textPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
