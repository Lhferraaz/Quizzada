abstract final class Validators {
  static String? notEmpty(String? value, String message) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  }

  static String? email(String? value) {
    final text = value?.trim() ?? '';

    if (text.isEmpty) return 'Informe o seu e-mail';

    final valid = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(text);

    if (!valid) return 'Digite um e-mail válido, como nome@email.com';
  }

  static String? newPassword(String? value) {
    final text = value ?? '';

    if (text.isEmpty) return 'Crie uma senha';
    if (text.length < 8) return 'A senha precisa ter no mínimo 8 caracteres';
    return null;
  }
}
