import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

//worked
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        // Fetch notes from the NotesCubit
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        // Reverse the list to show the latest notes on top
        final reversedNotes = notes.reversed.toList();

        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount: reversedNotes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: NotesItem(
                  note: reversedNotes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
