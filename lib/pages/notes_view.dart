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
            builder: (BuildContext context) {
              return AddNoteButton();
            },
          );
        },
        child: Icon(Icons.add, size: 35),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, size: 35),
            onPressed: () {
              // Action for adding a new note
            },
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15),
          child: const Text('Notes', style: TextStyle(fontSize: 40)),
        ),
      ),
      body: NotesList(),
    );
  }
}

