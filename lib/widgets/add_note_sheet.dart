import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(padding: const EdgeInsets.all(15.0), child: AddNoteForm()),
    );
  }
}


