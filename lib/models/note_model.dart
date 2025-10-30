import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String content;
  @HiveField(3)
  final DateTime createdAt;

  NoteModel({
    required this.title,
    required this.content,
    required this.subTitle,
    required this.createdAt,
  });
}
