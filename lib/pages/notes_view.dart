import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
