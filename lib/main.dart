import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:notes_app/pages/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global( // 👈 هنا
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
