import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzada/app.dart';

void main() {
  runApp(
    ProviderScope(
      // Sem tentativas automáticas: se der erro, a tela mostra o erro na hora. // ← novo
      retry: (retryCount, error) => null, // ← novo
      child: const App(),
    ),
  );
}
