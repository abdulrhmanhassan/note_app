import 'package:flutter/material.dart';

import 'cutsom_note_icon.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NoteItem(),
        );
      },
    );
  }
}
