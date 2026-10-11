import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_avatar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_radius.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

class _ColorOption {
  final Color color;
  final String symbol;

  const _ColorOption(this.color, this.symbol);
}

const _colorOptions = [
  _ColorOption(QzColors.gameA, '▲'),
  _ColorOption(QzColors.gameB, '◆'),
  _ColorOption(QzColors.gameC, '●'),
  _ColorOption(QzColors.gameD, '■'),
];

class AvatarPickerCard extends StatelessWidget {
  const AvatarPickerCard({
    super.key,
    required this.initials,
    required this.color,
    required this.onColorChanged,
  });

  final String initials;
  final Color color;
  final ValueChanged<Color> onColorChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(QzSpace.s16),
      decoration: BoxDecoration(
        color: QzColors.bgSurface,
        borderRadius: BorderRadius.circular(QzRadius.lg),
        border: Border.all(color: QzColors.borderSubtle),
      ),
      child: Row(
        children: [
          QzAvatar(initials: initials, size: QzAvatarSize.large, color: color),
          const SizedBox(width: QzSpace.s16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sua cor no jogo',
                  style: QzText.labelS.copyWith(color: QzColors.textSecondary),
                ),
                const SizedBox(height: QzSpace.s12),
                Wrap(
                  spacing: QzSpace.s8,
                  runSpacing: QzSpace.s8,
                  children: [
                    for (final option in _colorOptions)
                      _ColorTile(
                        option: option,
                        selected: option.color == color,
                        onTap: () => onColorChanged(option.color),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final _ColorOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: selected
              ? Border.all(color: QzColors.borderFocus, width: 2.5)
              : null,
          color: option.color,
          borderRadius: BorderRadius.circular(QzRadius.md),
        ),
        child: Text(
          option.symbol,
          style: const TextStyle(
            fontSize: 18,
            height: 1,
            color: QzColors.textInverse,
          ),
        ),
      ),
    );
  }
}
