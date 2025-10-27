import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.blueGrey,
      Colors.teal,
      Colors.deepPurple,
      Colors.orange,
      Colors.green,
    ];

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        final color = colors[index % colors.length];
        return Note(color: color , title: 'Note Title $index', body: 'This is the body of note $index');
      },
    );
  }
}
