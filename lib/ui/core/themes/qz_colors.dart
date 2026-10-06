import 'package:flutter/material.dart';

/// Tokens de cor do Quizzada. Espelha as variáveis do Figma (coleções
/// "Primitivos" e "Tema"). As telas só usam os tokens semânticos.
abstract final class QzColors {
  // Primitivos: privados de propósito (o "_" no começo).
  static const _ink950 = Color(0xFF0A0B0E);
  static const _ink900 = Color(0xFF111318);
  static const _ink850 = Color(0xFF16191F);
  static const _ink800 = Color(0xFF1C2028);
  static const _ink700 = Color(0xFF262B34);
  static const _ink600 = Color(0xFF353B47);
  static const _ink500 = Color(0xFF5A6170);
  static const _ink300 = Color(0xFFA6ACB8);
  static const _paper100 = Color(0xFFF4F2EC);
  static const _paper200 = Color(0xFFE3E0D6);
  static const _coral500 = Color(0xFFFF5440);
  static const _coral700 = Color(0xFFC93A29);
  static const _cobalto500 = Color(0xFF4C7BFF);
  static const _cobalto700 = Color(0xFF2F57D1);
  static const _ambar500 = Color(0xFFFFB31F);
  static const _ambar700 = Color(0xFFC7860A);
  static const _jade500 = Color(0xFF19C37D);
  static const _jade700 = Color(0xFF0E9159);

  // Fundos
  static const bgBase = _ink950;
  static const bgSurface = _ink900;
  static const bgRaised = _ink800;
  static const bgSunken = _ink850;
  static const bgScrim = Color.fromRGBO(5, 5, 8, 0.72);

  // Bordas
  static const borderSubtle = _ink700;
  static const borderStrong = _ink600;
  static const borderFocus = _paper100;

  // Texto
  static const textPrimary = _paper100;
  static const textSecondary = _ink300;
  static const textMuted = _ink500;
  static const textInverse = _ink950;

  // Ação
  static const actionPrimary = _paper100;
  static const actionPrimaryPressed = _paper200;
  static const actionOnPrimary = _ink950;

  // Jogo: as 4 formas, uma cor para cada alternativa
  static const gameA = _coral500; // ▲
  static const gameB = _cobalto500; // ◆
  static const gameC = _ambar500; // ●
  static const gameD = _jade500; // ■
  static const gameADeep = _coral700;
  static const gameBDeep = _cobalto700;
  static const gameCDeep = _ambar700;
  static const gameDDeep = _jade700;

  // Feedback
  static const feedbackSuccess = _jade500;
  static const feedbackDanger = _coral500;
  static const feedbackWarning = _ambar500;
  static const feedbackInfo = _cobalto500;
  static const live = _coral500;

  // Transparências: o alfa já vem dentro do token
  static const overlayInk12 = Color.fromRGBO(10, 11, 14, 0.12);
  static const liveSubtle = Color.fromRGBO(255, 84, 64, 0.14);
  static const feedbackDangerSubtle = Color.fromRGBO(255, 84, 64, 0.14);
  static const feedbackSuccessSubtle = Color.fromRGBO(25, 195, 125, 0.14);
}