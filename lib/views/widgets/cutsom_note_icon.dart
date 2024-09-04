import 'package:flutter/material.dart';

import '../edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const EditNoteView();
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFFEB8B05),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Note one",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Hello to my final app by Abdelrahman Hassan will help you عبدالرحمن حسن بالعربية ",
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              trailing: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Text('Agu 29.2024',
                  style: TextStyle(
                      fontSize: 12, color: Colors.black.withOpacity(0.5))),
            )
          ],
        ),
      ),
    );
  }
}
