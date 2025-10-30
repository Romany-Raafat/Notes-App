import 'package:flutter/material.dart';
import 'package:notes_app/utils/notification.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[900],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Add a New Note 📝',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // 🟢 Title field
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your title...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // 🟢 Note field
            SizedBox(
              height: 150,
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  hintText: 'Enter your note...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 25),

            // 🟢 Add button
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  notification(
                    title: "Note Added 📝",
                    description: "Your note has been added successfully!",
                  );
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent[700],
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
