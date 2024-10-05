import 'package:a/cubits/cubit/notes_cubit.dart';
import 'package:a/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cutsom_note_icon.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
