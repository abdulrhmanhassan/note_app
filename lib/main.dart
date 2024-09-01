import 'package:a/views/note_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: const NoteView());
  }
}
