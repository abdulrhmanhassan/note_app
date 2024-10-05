import 'package:a/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:a/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

String? title, content;
final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
            label: "Title",
            maxLine: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: "Content",
            label: "Content",
            maxLine: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        content: content!,
                        date: DateTime.now().toString(),
                        color: Colors.blueAccent.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
