abstract final class Formatters {
  static String initials(String name) {
    final words = name.trim().split(RegExp(r'\s+')).where((word) => word.isNotEmpty).toList();

    if (words.isEmpty) return '?';

    if (words.length == 1) return words.first[0].toUpperCase();

    return '${words.first[0]} ${words.last[0]}'.toUpperCase();
  }
}