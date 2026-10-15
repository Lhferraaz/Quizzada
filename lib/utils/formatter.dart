abstract final class Formatters {
  static String initials(String name) {
    final words = name
        .trim()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .toList();

    if (words.isEmpty) return '?';

    if (words.length == 1) return words.first[0].toUpperCase();

    return '${words.first[0]} ${words.last[0]}'.toUpperCase();
  }

  static const _weekdays = [
    'Segunda',
    'Terça',
    'Quarta',
    'Quinta',
    'Sexta',
    'Sábado',
    'Domingo',
  ];

  static const _months = [
    // ← novo
    'janeiro', // ← novo
    'fevereiro', // ← novo
    'março', // ← novo
    'abril', // ← novo
    'maio', // ← novo
    'junho', // ← novo
    'julho', // ← novo
    'agosto', // ← novo
    'setembro', // ← novo
    'outubro', // ← novo
    'novembro', // ← novo
    'dezembro', // ← novo
  ];

  static String weekdayAndDate(DateTime date) {
    final weekday = _weekdays[date.weekday - 1];
    final month = _months[date.month - 1];
    return '$weekday, ${date.day} de $month';
  }
}
