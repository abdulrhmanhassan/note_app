import 'package:a/constants.dart';
import 'package:a/views/widgets/noteView_body.dart';
import 'package:flutter/material.dart';

import 'widgets/add_note_bottom_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        backgroundColor: kPrimerColor,
        foregroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
