import 'package:flutter/material.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_button.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';

/// Tela de desenvolvimento: mostra os componentes do app lado a lado.
/// Não faz parte do app final.
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(QzSpace.s20),
          children: [
            Text('Galeria', style: QzText.titleL),
            const SizedBox(height: QzSpace.s24),
            _Section(
              title: 'Botão · grande',
              children: [
                Wrap(
                  spacing: QzSpace.s12,
                  runSpacing: QzSpace.s12,
                  children: [
                    QzButton(label: 'Primário', onPressed: () {}),
                    QzButton(
                      label: 'Secundário',
                      type: QzButtonType.secondary,
                      onPressed: () {},
                    ),
                    QzButton(
                      label: 'Fantasma',
                      type: QzButtonType.ghost,
                      onPressed: () {},
                    ),
                    QzButton(
                      label: 'Perigo',
                      type: QzButtonType.danger,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            _Section(
              title: 'Botão · médio',
              children: [
                Wrap(
                  spacing: QzSpace.s12,
                  runSpacing: QzSpace.s12,
                  children: [
                    QzButton(
                      label: 'Primário',
                      size: QzButtonSize.medium,
                      onPressed: () {},
                    ),
                    QzButton(
                      label: 'Secundário',
                      size: QzButtonSize.medium,
                      type: QzButtonType.secondary,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            _Section(
              title: 'Botão · com ícone e largura total',
              children: [
                QzButton(
                  label: 'Continuar',
                  icon: Icons.arrow_forward,
                  expanded: true,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Um título e os widgets daquela seção.
class _Section extends StatelessWidget {
  const _Section({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: QzSpace.s32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: QzText.titleM),
          const SizedBox(height: QzSpace.s16),
          ...children,
        ],
      ),
    );
  }
}