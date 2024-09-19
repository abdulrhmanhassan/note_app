import 'package:a/constants.dart';
import 'package:a/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:a/models/note_model.dart';
import 'package:a/views/note_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
          debugShowCheckedModeBanner: false,
          home: const NoteView()),
    );
  }
}
