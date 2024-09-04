import "package:a/views/widgets/custom_app_bar.dart";
import "package:a/views/widgets/custom_text_field.dart";
import "package:flutter/material.dart";

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: "Title", label: "Title"),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Content",
            label: "Content",
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
