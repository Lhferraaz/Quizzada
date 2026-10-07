import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';

enum QzTopBarType { back, close }

class QzTopBar extends StatelessWidget {
  const QzTopBar({
    super.key,
    required this.title,
    required this.onLeadingPressed,
    this.trailingIcon,
    this.onTrailingPressed,
    this.type = QzTopBarType.back,
  });

  final String title;
  final VoidCallback onLeadingPressed;
  final QzTopBarType type;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingPressed;

  @override
  Widget build(BuildContext context) {
    final trailing = trailingIcon;

    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: QzSpace.s20),
        child: Row(
          children: [
            _CircleButton(
              icon: type == QzTopBarType.back ? Icons.arrow_back : Icons.close,
              onPressed: onLeadingPressed,
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: QzText.labelL.copyWith(color: QzColors.textPrimary),
              ),
            ),
            if (trailing != null)
              _CircleButton(icon: trailing, onPressed: onLeadingPressed)
            else
              const SizedBox(width: _CircleButton.size),
          ],
        ),
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.icon, this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  static const double size = 40;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: QzColors.bgSurface,
      shape: const CircleBorder(side: BorderSide(color: QzColors.borderSubtle)),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: SizedBox(
          width: size,
          height: size,
          child: Center(
            child: Icon(icon, size: 20, color: QzColors.textPrimary),
          ),
        ),
      ),
    );
  }
}
