import 'package:a/models/note_model.dart';
import 'package:flutter/material.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    // to open this item
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const EditNoteView();
          },
        ));
      },
      // to change background color & radius
      child: Container(
        padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // title & subtitle & delete icon
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  note.content,
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.date;
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            // Date
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Text(note.date,
                  style: TextStyle(
                      fontSize: 12, color: Colors.black.withOpacity(0.5))),
            )
          ],
        ),
      ),
    );
  }
}
