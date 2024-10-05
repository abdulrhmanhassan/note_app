import 'package:a/constants.dart';
import 'package:a/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? note;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    note = noteBox.values.toList();
  }
}
