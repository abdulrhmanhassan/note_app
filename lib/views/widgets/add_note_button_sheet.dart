import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              hint: "Title",
              label: "Title",
              maxLine: 1,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: "Content",
              label: "Content",
              maxLine: 5,
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
