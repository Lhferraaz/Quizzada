import 'package:flutter/material.dart';
import 'package:quizzada/ui/auth/widgets/auth_footer.dart';
import 'package:quizzada/ui/auth/widgets/brand_logo.dart';
import 'package:quizzada/ui/auth/widgets/google_button.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_button.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_text_field.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: QzSpace.s20,
            vertical: QzSpace.s16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const BrandLogo(),
              const SizedBox(height: QzSpace.s32),
              Text(
                'ENTRAR',
                style: QzText.overline.copyWith(color: QzColors.textMuted),
              ),
              const SizedBox(height: QzSpace.s8),
              Text('Que bom te ver de novo', style: QzText.displayM),
              const SizedBox(height: QzSpace.s12),
              Text(
                'Entre para jogar quizzes ao vivo com sua turma.',
                style: QzText.bodyL.copyWith(color: QzColors.textSecondary),
              ),
              const SizedBox(height: QzSpace.s24),
              const QzTextField(
                label: 'E-mail',
                hint: 'voce@email.com',
                leadingIcon: Icons.mail_outline,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: QzSpace.s16),
              const QzTextField(
                label: 'Senha',
                hint: 'Sua senha',
                leadingIcon: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: QzSpace.s12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Esqueci minha senha',
                  style: QzText.labelS.copyWith(color: QzColors.textSecondary),
                ),
              ),
              const SizedBox(height: QzSpace.s32),
              QzButton(label: 'Entrar', expanded: true, onPressed: () {}),
              const SizedBox(height: QzSpace.s20),
              const _OrDivider(),
              const SizedBox(height: QzSpace.s20),
              GoogleButton(onPressed: () {}),
              const SizedBox(height: QzSpace.s24),
              AuthFooter(
                question: 'Não tem conta?',
                actionLabel: 'Criar conta',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(height: 1, thickness: 1, color: QzColors.borderSubtle),
        ),
        const SizedBox(width: QzSpace.s12),
        Text('ou', style: QzText.bodyS.copyWith(color: QzColors.textMuted)),
        const SizedBox(width: QzSpace.s12),
        const Expanded(
          child: Divider(height: 1, thickness: 1, color: QzColors.borderSubtle),
        ),
      ],
    );
  }
}
