class NoteModel {
  final String title;
  final String subTitle;
  final String content;
  final DateTime createdAt;

  NoteModel({
    required this.title,
    required this.content,
    required this.subTitle,
    required this.createdAt,
  });
}
