import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Estilos de texto do Quizzada. Espelham os Text Styles do Figma.
/// No Figma, altura da linha e espaçamento são em %. Aqui: `height` é um
/// multiplicador (147% -> 1.47) e `letterSpacing` é em pixels (-3% de 72 -> -2.16).
abstract final class QzText {
  // Títulos (Archivo)
  static final displayXL = GoogleFonts.archivo(
    fontSize: 72,
    fontWeight: FontWeight.w900,
    height: 1.00,
    letterSpacing: -2.16,
  );

  static final displayL = GoogleFonts.archivo(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    height: 1.00,
    letterSpacing: -1.44,
  );

  static final displayM = GoogleFonts.archivo(
    fontSize: 36,
    fontWeight: FontWeight.w800,
    height: 1.10,
    letterSpacing: -0.72,
  );

  static final titleL = GoogleFonts.archivo(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    height: 1.15,
    letterSpacing: -0.56,
  );

  static final titleM = GoogleFonts.archivo(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1.27,
    letterSpacing: -0.22,
  );

  static final titleS = GoogleFonts.archivo(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    height: 1.30,
    letterSpacing: -0.09,
  );

  // Corpo e rótulos (Geist)
  static final bodyL = GoogleFonts.geist(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 1.50,
  );

  static final bodyM = GoogleFonts.geist(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.47,
  );

  static final bodyMStrong = GoogleFonts.geist(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.47,
  );

  static final bodyS = GoogleFonts.geist(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.38,
  );

  static final labelL = GoogleFonts.geist(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.30,
    letterSpacing: -0.09,
  );

  static final labelM = GoogleFonts.geist(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: -0.05,
  );

  static final labelS = GoogleFonts.geist(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.23,
  );

  // Números e overline (Geist Mono)
  static final overline = GoogleFonts.geistMono(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 1.27,
    letterSpacing: 0.88,
  );

  static final numXL = GoogleFonts.geistMono(
    fontSize: 44,
    fontWeight: FontWeight.w600,
    height: 1.09,
    letterSpacing: -1.32,
  );

  static final numL = GoogleFonts.geistMono(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.14,
    letterSpacing: -0.56,
  );

  static final numM = GoogleFonts.geistMono(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    height: 1.29,
    letterSpacing: -0.17,
  );

  static final numS = GoogleFonts.geistMono(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.23,
  );
}