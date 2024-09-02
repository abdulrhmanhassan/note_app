import "package:a/views/widgets/custom_appBar.dart";
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
            height: 40,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
          )
        ],
      ),
    );
  }
}
