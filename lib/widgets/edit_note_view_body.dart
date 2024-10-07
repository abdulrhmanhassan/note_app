import "package:a/cubits/cubit/notes_cubit.dart";
import "package:a/models/note_model.dart";
import "package:a/widgets/custom_app_bar.dart";
import "package:a/widgets/custom_text_field.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Note",
            searchIcon: Icons.done,
          ),
          const SizedBox(
            height: 50,
          ),
          // title
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title,
              label: "Title"),
          const SizedBox(height: 16),
          // content
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.content,
            label: "Content",
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
