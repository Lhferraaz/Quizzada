class Quiz {
  final String id;
  final String title;
  final String category;
  final int questionCount;
  final int playCount;
  final String cover;

  const Quiz({
    required this.id,
    required this.title,
    required this.category,
    required this.questionCount,
    required this.playCount,
    required this.cover,
  });

  factory Quiz.fromMap(Map<String, dynamic> map) {
    // ← novo
    return Quiz(
      // ← novo
      id: map['id'] as String,
      title: map['title'] as String,
      category: map['category'] as String,
      questionCount: map['questionCount'] as int,
      playCount: map['playCount'] as int,
      cover: map['cover'] as String,
    ); // ← novo
  } //~
}
