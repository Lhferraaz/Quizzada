import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

enum QzButtonType { primary, secondary, ghost, danger }

enum QzButtonSize { large, medium }

class QzButton extends StatelessWidget {
  const QzButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = QzButtonType.primary,
    this.size = QzButtonSize.large,
    this.icon,
    this.expanded = false,
  });

  final String label;
  final VoidCallback onPressed;
  final QzButtonType type;
  final QzButtonSize size;
  final IconData? icon;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final isLarge = size == QzButtonSize.large;

    final background = switch (type) {
      QzButtonType.primary => QzColors.actionPrimary,
      QzButtonType.secondary => QzColors.bgRaised,
      QzButtonType.ghost => Colors.transparent,
      QzButtonType.danger => QzColors.feedbackDanger,
    };
    final foreground = switch (type) {
      QzButtonType.primary => QzColors.actionOnPrimary,
      QzButtonType.secondary => QzColors.textPrimary,
      QzButtonType.ghost => QzColors.textPrimary,
      QzButtonType.danger => QzColors.textInverse,
    };
    final side = type == QzButtonType.secondary
        ? const BorderSide(color: QzColors.borderStrong)
        : BorderSide.none;

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        isLarge ? QzRadius.md : QzRadius.sm,
      ),
      side: side,
    );
    final textStyle = (isLarge ? QzText.labelL : QzText.labelM).copyWith(
      color: foreground,
    );

    return SizedBox(
      width: expanded ? double.infinity : null,
      height: isLarge ? 56 : 44,
      child: Material(
        color: background,
        shape: shape,
        child: InkWell(
          customBorder: shape,
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isLarge ? QzSpace.s24 : QzSpace.s16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: isLarge ? 20 : 18, color: foreground),
                  const SizedBox(width: QzSpace.s8),
                ],
                Text(label, style: textStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}