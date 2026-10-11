import 'package:flutter/material.dart';
import 'package:quizzada/ui/auth/widgets/auth_footer.dart';
import 'package:quizzada/ui/auth/widgets/avatar_picker_card.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_button.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_text_field.dart';
import 'package:quizzada/ui/core/shared/widgets/qz_top_bar.dart';
import 'package:quizzada/ui/core/themes/qz_colors.dart';
import 'package:quizzada/ui/core/themes/qz_space.dart';
import 'package:quizzada/ui/core/themes/qz_text.dart';
import 'package:quizzada/utils/formatter.dart';
import 'package:quizzada/utils/validators.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  Color _color = QzColors.gameC;
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void submit() {
    if (!_formKey.currentState!.validate()) return;

    final email = _emailController.text.trim();
    final nome = _nomeController.text.trim();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Tudo certo, $nome e $email! O login real será implementado depois',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            QzTopBar(
              title: 'Nova Conta',
              onLeadingPressed: () => Navigator.of(context).maybePop(),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  QzSpace.s20,
                  QzSpace.s8,
                  QzSpace.s20,
                  QzSpace.s16,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Crie sua conta', style: QzText.displayM),
                      const SizedBox(height: QzSpace.s8),
                      Text(
                        'Leva menos de um minuto. Depois é só entrar numa sala.',
                        style: QzText.bodyL.copyWith(
                          color: QzColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: QzSpace.s24),
                      AvatarPickerCard(
                        initials: Formatters.initials(_nomeController.text),
                        color: _color,
                        onColorChanged: (color) => setState(() => _color = color),
                      ),
                      const SizedBox(height: QzSpace.s20),
                      QzTextField(
                        label: 'Nome',
                        hint: 'Nome',
                        leadingIcon: Icons.person_outline,
                        controller: _nomeController,
                        validator: (value) =>
                            Validators.notEmpty(value, 'Informe seu nome'),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (_) => setState(() {}),
                      ),
                      const SizedBox(height: QzSpace.s16),
                      QzTextField(
                        label: 'E-mail',
                        hint: 'Voce@email.com',
                        leadingIcon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        validator: Validators.email,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      const SizedBox(height: QzSpace.s16),
                      QzTextField(
                        label: 'Senha',
                        hint: 'Mínimo de 8 caracteres',
                        controller: _passwordController,
                        leadingIcon: Icons.lock_outlined,
                        validator: (value) => Validators.newPassword(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: true,
                      ),
                      const SizedBox(height: 70),
                      QzButton(label: 'Criar conta', onPressed: submit),
                      const SizedBox(height: QzSpace.s16),
                      AuthFooter(
                        question: 'Já tem conta?',
                        actionLabel: 'Entrar',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
