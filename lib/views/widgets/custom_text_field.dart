import 'package:a/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimerColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: const TextStyle(color: kPrimerColor),
        labelText: "Title",
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
