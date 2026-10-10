import 'package:flutter/cupertino.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    required this.question,
    required this.actionLabel,
    required this.onPressed,
  });

  final String question;
  final String actionLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: QzText.bodyM.copyWith(color: QzColors.textSecondary),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            actionLabel,
            style: QzText.labelM.copyWith(color: QzColors.textPrimary),
          ),
        ),
      ],
    );
  }
}
