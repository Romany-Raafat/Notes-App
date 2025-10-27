import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_button.dart';
import 'package:notes_app/widgets/notes_list.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) => AddNoteButton(),
          );
        },
        child: const Icon(Icons.add, size: 35),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 15.0, top: 15),
          child: Text('Notes', style: TextStyle(fontSize: 40)),
        ),
      ),
      body: const NotesList(),
    );
  }
}
