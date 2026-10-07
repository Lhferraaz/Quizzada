import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

enum QzAvatarSize {
  small(28, 11),
  medium(40, 15),
  large(72, 26),
  extraLarge(112, 40);

  const QzAvatarSize(this.diameter, this.fontSize);

  final double diameter;
  final double fontSize;
}

class QzAvatar extends StatelessWidget {
  const QzAvatar({
    super.key,
    required this.initials,
    this.size = QzAvatarSize.medium,
    this.color = QzColors.gameB,
  });

  final String initials;
  final Color color;
  final QzAvatarSize size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.diameter,
      height: size.diameter,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Text(
        initials,
        style: QzText.displayM.copyWith(
          fontSize: size.fontSize,
          height: 1,
          letterSpacing: size.fontSize * -0.02,
          color: QzColors.textInverse,
        ),
      ),
    );
  }
}
