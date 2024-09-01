import 'package:a/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
