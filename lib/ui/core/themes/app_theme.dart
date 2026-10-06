import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';

abstract final class AppTheme {
  static ThemeData get dark {
    final base = ThemeData.dark();
    return base.copyWith(
      scaffoldBackgroundColor: QzColors.bgBase,
      colorScheme: base.colorScheme.copyWith(
        surface: QzColors.bgSurface,
        onSurface: QzColors.textPrimary,
        primary: QzColors.actionPrimary,
        onPrimary: QzColors.actionOnPrimary,
        error: QzColors.feedbackDanger,
        outline: QzColors.borderStrong,
        outlineVariant: QzColors.borderSubtle,
      ),
      textTheme: GoogleFonts.geistTextTheme(base.textTheme).apply(
        bodyColor: QzColors.textPrimary,
        displayColor: QzColors.textPrimary,
      ),
    );
  }
}