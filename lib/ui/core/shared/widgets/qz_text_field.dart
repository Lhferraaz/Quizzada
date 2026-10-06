import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class QzTextField extends StatelessWidget {
  const QzTextField({
    super.key,
    required this.label,
    this.hint,
    this.initialValue,
    this.controller,
    this.leadingIcon,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.autovalidateMode,
    this.onChanged,
  });

  final String label;
  final String? hint;
  final String? initialValue;
  final TextEditingController? controller;
  final IconData? leadingIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: QzText.labelS.copyWith(color: QzColors.textSecondary),
        ),
        const SizedBox(height: QzSpace.s8),
        TextFormField(
          initialValue: initialValue,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          autovalidateMode: autovalidateMode,
          onChanged: onChanged,
          style: QzText.bodyL.copyWith(color: QzColors.textPrimary),
          cursorColor: QzColors.textPrimary,
          errorBuilder: (context, message) => _ErrorMessage(message),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: QzText.bodyL.copyWith(color: QzColors.textMuted),
            filled: true,
            fillColor: QzColors.bgSurface,
            // 17 x 1,5 de linha + 2 x 15 = 55,5, o "56" do Figma
            contentPadding: const EdgeInsets.symmetric(
              horizontal: QzSpace.s16,
              vertical: 15,
            ),
            prefixIcon: leadingIcon == null
                ? null
                : Padding(
                    padding: const EdgeInsets.only(
                      left: QzSpace.s16,
                      right: QzSpace.s12,
                    ),
                    child: Icon(
                      leadingIcon,
                      size: 20,
                      color: QzColors.textSecondary,
                    ),
                  ),
            prefixIconConstraints: const BoxConstraints(),
            enabledBorder: _border(QzColors.borderSubtle, 1),
            focusedBorder: _border(QzColors.borderFocus, 1.5),
            errorBorder: _border(QzColors.feedbackDanger, 1.5),
            focusedErrorBorder: _border(QzColors.feedbackDanger, 1.5),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder _border(Color color, double width) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(QzRadius.md),
    borderSide: BorderSide(color: color, width: width),
  );
}

class _ErrorMessage extends StatelessWidget {
  const _ErrorMessage(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.error_outline,
          size: 16,
          color: QzColors.feedbackDanger,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            message,
            style: QzText.bodyS.copyWith(color: QzColors.feedbackDanger),
          ),
        ),
      ],
    );
  }
}