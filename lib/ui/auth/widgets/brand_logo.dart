import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 40,
          height: 40,
          semanticLabel: 'Logo Quizzada',
        ),
        const SizedBox(width: QzSpace.s12),
        Text(
          'quizzada',
          style: QzText.displayL.copyWith(
            fontSize: 30,
            height: 1,
            letterSpacing: -1.2,
          ),
        ),
      ],
    );
  }
}
