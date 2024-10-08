import 'package:a/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.label,
    this.maxLine = 1,
    this.onSaved,
    this.onChanged,
  });

  final String hint;
  final String? label;
  final int maxLine;

  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true
            //value == null || value.isEmpty
            ) {
          return "Field is required";
        } else {
          return null;
        }
      },
      cursorColor: kPrimerColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kPrimerColor),
        labelText: label,
        labelStyle: const TextStyle(color: kPrimerColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimerColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
