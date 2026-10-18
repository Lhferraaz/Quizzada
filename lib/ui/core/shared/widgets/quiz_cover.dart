import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';

/// A capa de um quiz: uma imagem quadrada com os cantos arredondados.
class QuizCover extends StatelessWidget {
  const QuizCover({super.key, required this.image, this.size = 72});

  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(QzRadius.md),
      child: Image.asset(image, width: size, height: size, fit: BoxFit.cover),
    );
  }
}
