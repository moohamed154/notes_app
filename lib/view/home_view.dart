import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesVeiw extends StatelessWidget {
  const NotesVeiw({super.key});

//static String id = 'notes view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
